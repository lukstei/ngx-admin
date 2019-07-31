import {Component, OnChanges, SimpleChange} from '@angular/core';
import {ServerDataSource} from 'ng2-smart-table';

import {HttpClient, HttpParams} from "@angular/common/http";
import {ServerSourceConf} from "ng2-smart-table/lib/data-source/server/server-source.conf";
import {map} from "rxjs/operators";
import {Observable} from "rxjs";

class PostgrestDataSource extends ServerDataSource {
  constructor(http: HttpClient, conf: ServerSourceConf | {}, private columns: any) {
    super(http, conf);
  }

  protected requestElements(): Observable<any> {
    const httpParams = this.createRequesParams();
    return this.http.get(this.conf.endPoint, {
      params: httpParams,
      observe: 'response',
      headers: {"Prefer": "count=exact"},
    });
  }

  protected extractTotalFromResponse(res: any): number {
    return +res.headers.get('Content-Range').split("/")[1];
  }

  protected addPagerRequestParams(httpParams: HttpParams): HttpParams {
    if (this.pagingConf && this.pagingConf['page'] && this.pagingConf['perPage']) {
      httpParams = httpParams.set("offset", "" + (+this.pagingConf['perPage'] * (+this.pagingConf['page'] - 1)));
      httpParams = httpParams.set("limit", this.pagingConf['perPage']);
    }
    return httpParams;
  }

  protected addFilterRequestParams(httpParams: HttpParams): HttpParams {
    if (this.filterConf.filters) {
      const filters = this.filterConf.filters
        .filter(x => x['search'])
        .map(fieldConf => {
          const q = encodeURIComponent(fieldConf['search']);
          const search = this.columns[fieldConf['field']].type === "string" ?
            `like.*${q}*`
            : `eq.${q}`;
          return `${fieldConf['field']}.${search}`;
        });

      if (filters.length > 0) {
        httpParams = httpParams.set("and", "(" + filters.join(",") + ")");
      }
    }
    return httpParams;
  }

  protected addSortRequestParams(httpParams: HttpParams): HttpParams {
    if (this.sortConf) {
      this.sortConf.forEach( fieldConf => {
        httpParams = httpParams.set("order", `${fieldConf.field}.${fieldConf.direction.toLowerCase()}`);
      });
    }
    return httpParams;
  }

  preprocessUpdate(element: any) {
    const newObject = Object.assign({}, element);
    Object.entries(this.columns).map(([k, c]: [any, any]) => {
      if(c.type === 'number') {
        if(newObject[k] === '') {
          delete newObject[k];
        }
      }
    });
    return newObject;
  }

  prepend(element: any): Promise<any> {
    return new Promise<any>((resolve, reject) => {
      this.http.post(this.conf.endPoint, this.preprocessUpdate(element), {
        headers: {"Prefer": "return=representation"},
      })
        .pipe(
          map(x => {
            super.prepend(x[0]);
            return x[0];
          }),
        ).subscribe(resolve, reject);
    });
  }

  update(element: any, values: any): Promise<any> {
    return new Promise<any>((resolve, reject) => {
      this.http.patch(`${this.conf.endPoint}?id=eq.${element.id}`, values, {
        headers: {"Prefer": "resolution=merge-duplicates, return=representation"}
      })
        .pipe(
          map(x => {
            super.update(element, x[0]);
            return x[0];
          })
        ).subscribe(resolve, reject);
    });
  }

  remove(element: any): Promise<any> {
    return new Promise<any>((resolve, reject) => {
      this.http.delete(`${this.conf.endPoint}?id=eq.${element.id}`)
        .pipe(
          map(_ => {
            super.remove(element);
          })
        ).subscribe(resolve, reject);
    });
  }
}

@Component({
  selector: 'ngx-smart-table',
  templateUrl: './smart-table.component.html',
  styleUrls: ['./smart-table.component.scss'],
})
export class SmartTableComponent {

  settings = {
    add: {
      addButtonContent: '<i class="nb-plus"></i>',
      createButtonContent: '<i class="nb-checkmark"></i>',
      cancelButtonContent: '<i class="nb-close"></i>',
    },
    edit: {
      editButtonContent: '<i class="nb-edit"></i>',
      saveButtonContent: '<i class="nb-checkmark"></i>',
      cancelButtonContent: '<i class="nb-close"></i>',
    },
    delete: {
      deleteButtonContent: '<i class="nb-trash"></i>',
      confirmDelete: true,
    },
    columns: {
      id: {
        title: 'ID',
        type: 'number',
      },
      first_name: {
        title: 'First Name',
        type: 'string',
      },
      last_name: {
        title: 'Last Name',
        type: 'string',
      },
      username: {
        title: 'Username',
        type: 'string',
      },
      email: {
        title: 'E-mail',
        type: 'string',
      },
      age: {
        title: 'Age',
        type: 'number',
      },
    },
    pager: {
      display: true,
      perPage: 30,
    },
  };

  source: ServerDataSource;

  constructor(
    private httpClient: HttpClient) {
    this.source = new PostgrestDataSource(httpClient,
      new ServerSourceConf({
        endPoint: 'http://localhost:3000/users'
      }),
      this.settings.columns
    );
  }

  onDeleteConfirm(event): void {
    if (window.confirm('Are you sure you want to delete?')) {
      event.confirm.resolve();
    } else {
      event.confirm.reject();
    }
  }

}
