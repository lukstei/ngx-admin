create table users
(
    id         int primary key,
    first_name varchar not null,
    last_name  varchar not null,
    username   varchar not null,
    email      varchar,
    age        int
);

INSERT INTO "users" (id, last_name, first_name, username, age, email)
VALUES
       (6, 'Payne', 'Talon', 'auctor', 28, 'scelerisque.dui@vitaeorci.ca'),
       (7, 'French', 'Rooney', 'eget', 44, 'Cum.sociis.natoque@consequat.edu'),
       (8, 'Bright', 'Stacey', 'Donec', 24, 'elit@dictumcursusNunc.net'),
       (9, 'Dunn', 'Berk', 'orci.', 50, 'malesuada.fames.ac@in.edu'),
       (10, 'Hopkins', 'Heidi', 'non,', 38, 'Vestibulum@lectusa.ca'),
       (11, 'Newton', 'Trevor', 'Quisque', 41, 'Nam@eunulla.org'),
       (12, 'Molina', 'Xander', 'gravida.', 41, 'ullamcorper.magna.Sed@sitametconsectetuer.net'),
       (13, 'Cherry', 'Nevada', 'ac', 28, 'pede.Cras.vulputate@neceleifendnon.edu'),
       (14, 'Wade', 'Kamal', 'ipsum', 39, 'consectetuer.ipsum.nunc@purusin.net'),
       (15, 'Rich', 'Jackson', 'dui', 19, 'accumsan.laoreet.ipsum@esttempor.net'),
       (16, 'Silva', 'Bert', 'venenatis', 30, 'mauris.sit@Aliquamadipiscinglobortis.co.uk'),
       (17, 'Colon', 'Mannix', 'posuere,', 46, 'lacus@Aliquam.net'),
       (18, 'Forbes', 'Minerva', 'in', 50, 'Quisque.porttitor.eros@mi.com'),
       (19, 'Hoover', 'Raymond', 'libero', 37, 'ac@Nunccommodo.org'),
       (20, 'Luna', 'Len', 'rhoncus.', 44, 'quis@elitAliquamauctor.org'),
       (21, 'Snow', 'Alec', 'per', 18, 'dolor.quam@Vivamus.co.uk'),
       (22, 'Mcclure', 'Otto', 'vulputate,', 36, 'erat.eget@rutrumnon.ca'),
       (23, 'Merrill', 'Montana', 'nulla.', 31, 'ac.libero@porttitorinterdum.co.uk'),
       (24, 'Sherman', 'Ashely', 'nisl', 39, 'mi.lacinia.mattis@ideratEtiam.net'),
       (25, 'Hopper', 'Robert', 'primis', 31, 'non@egestasligulaNullam.ca'),
       (26, 'Gilbert', 'Cameron', 'nibh', 47, 'Vivamus.rhoncus@Suspendisse.org'),
       (27, 'Page', 'Rudyard', 'diam.', 31, 'magna.Phasellus.dolor@sed.com'),
       (28, 'Hall', 'Teegan', 'ipsum', 36, 'lacinia@lacusQuisquepurus.edu'),
       (29, 'Bennett', 'Odessa', 'lorem,', 31, 'in.consectetuer.ipsum@sitamet.net'),
       (30, 'Jimenez', 'Keith', 'Aenean', 18, 'neque@dictumeueleifend.ca'),
       (31, 'Freeman', 'Garth', 'lorem', 43, 'Nullam@Maurisquis.com'),
       (32, 'Bass', 'Emerald', 'molestie', 37, 'purus.ac@velit.com'),
       (33, 'Mueller', 'Kim', 'sit', 28, 'vel.sapien@vitae.co.uk'),
       (34, 'Finley', 'Dante', 'scelerisque', 40, 'magna.Ut@nascetur.org'),
       (35, 'Larsen', 'Jeanette', 'neque', 35, 'pellentesque.Sed@vel.edu'),
       (36, 'Dyer', 'Armando', 'lectus', 50, 'elit@nonummy.net'),
       (37, 'Peters', 'Deanna', 'lacus.', 30, 'nec.urna@inaliquetlobortis.org'),
       (38, 'Martinez', 'Branden', 'ac', 29, 'mollis.Phasellus.libero@sit.co.uk'),
       (39, 'Norman', 'Nelle', 'ornare', 47, 'senectus.et.netus@ante.org'),
       (40, 'Petty', 'Charles', 'libero', 36, 'magna.Phasellus.dolor@aliquetodioEtiam.ca'),
       (41, 'Park', 'Hamish', 'diam.', 22, 'Nam@convallis.edu'),
       (42, 'Wilkins', 'Serina', 'facilisis.', 19, 'orci@Nunc.org'),
       (43, 'Swanson', 'Samantha', 'arcu.', 49, 'in.lobortis@Donec.com'),
       (44, 'Monroe', 'Anika', 'Pellentesque', 42, 'ac.nulla@temporloremeget.ca'),
       (45, 'Hooper', 'Yuli', 'gravida.', 36, 'Class.aptent.taciti@inaliquet.co.uk'),
       (46, 'Dale', 'Scott', 'sollicitudin', 35, 'facilisis.lorem.tristique@nunc.edu'),
       (47, 'Miranda', 'Russell', 'In', 43, 'adipiscing.lacus@quis.edu'),
       (48, 'Burton', 'Harrison', 'tincidunt', 30, 'Nunc.ac.sem@mollisnon.co.uk'),
       (49, 'Melendez', 'Cheyenne', 'eleifend', 30, 'scelerisque.mollis@ametante.ca'),
       (50, 'Britt', 'Hedley', 'molestie', 39, 'erat@Nunc.edu'),
       (51, 'Ward', 'Camden', 'Donec', 29, 'feugiat@sagittisNullam.net'),
       (52, 'Drake', 'Lamar', 'Donec', 27, 'Suspendisse.ac@rhoncusNullam.net'),
       (53, 'Hudson', 'Willa', 'velit', 47, 'Quisque@nec.org'),
       (54, 'Merritt', 'Brock', 'est,', 30, 'molestie.in@lectusjustoeu.com'),
       (55, 'Shepherd', 'Brennan', 'ornare', 41, 'at@ornare.com'),
       (56, 'Guerrero', 'Calvin', 'nulla.', 47, 'nisl.elementum.purus@urna.com'),
       (57, 'Orr', 'Driscoll', 'ac', 33, 'at.lacus.Quisque@consectetuer.co.uk'),
       (58, 'Jimenez', 'Honorato', 'et', 26, 'faucibus@Phasellusornare.com'),
       (59, 'Barlow', 'Priscilla', 'eget,', 26, 'elementum.purus.accumsan@elit.co.uk'),
       (60, 'Miller', 'Keiko', 'dis', 47, 'pede.et@Phasellusnulla.org'),
       (61, 'Melton', 'Dillon', 'consectetuer', 36, 'mi.eleifend.egestas@euismodin.edu'),
       (62, 'Santiago', 'Lester', 'Aenean', 50, 'tortor.Nunc@augue.com'),
       (63, 'Johnson', 'Kevyn', 'quam.', 28, 'rhoncus.Nullam@velit.com'),
       (64, 'Henson', 'Portia', 'a', 34, 'semper@adipiscingligula.net'),
       (65, 'Foster', 'Amery', 'at,', 24, 'orci@egestas.org'),
       (66, 'Carey', 'Orson', 'sed', 19, 'id@interdum.ca'),
       (67, 'Hughes', 'Olympia', 'Aenean', 38, 'montes.nascetur.ridiculus@Donec.net'),
       (68, 'Vaughn', 'Carissa', 'ipsum.', 41, 'rutrum.urna.nec@Phasellus.org'),
       (69, 'Dejesus', 'Rylee', 'mauris', 50, 'sed.sem.egestas@eget.net'),
       (70, 'Stephenson', 'Angelica', 'Pellentesque', 32, 'ut@Namacnulla.ca'),
       (71, 'Avila', 'Inga', 'Sed', 28, 'ut.pharetra@Fuscefermentumfermentum.edu'),
       (72, 'Parker', 'Gail', 'neque', 26, 'dignissim@Pellentesquehabitantmorbi.co.uk'),
       (73, 'Patel', 'Tate', 'et', 33, 'conubia.nostra@Phaselluselitpede.com'),
       (74, 'Noel', 'Brady', 'ultricies', 18, 'tellus.Aenean@facilisiSed.org'),
       (75, 'Douglas', 'Chase', 'eget', 47, 'nec.ante@et.ca'),
       (76, 'Lindsey', 'Brody', 'Fusce', 22, 'nibh.vulputate@orci.ca'),
       (77, 'Armstrong', 'Omar', 'Aliquam', 19, 'Quisque.varius.Nam@dolordapibusgravida.co.uk'),
       (78, 'Frost', 'Fulton', 'ligula', 41, 'a.neque.Nullam@nunc.edu'),
       (79, 'Zimmerman', 'Hermione', 'nisi.', 18, 'nibh.lacinia@eleifend.net'),
       (80, 'Acevedo', 'Barrett', 'pede', 48, 'odio@tempor.co.uk'),
       (81, 'Skinner', 'Aubrey', 'cursus', 31, 'ipsum.Donec@in.co.uk'),
       (82, 'Clemons', 'Palmer', 'tincidunt', 49, 'tincidunt.orci@semperrutrum.net'),
       (83, 'Rosa', 'Tucker', 'elementum', 41, 'amet.faucibus@utlacus.org'),
       (84, 'Deleon', 'Michelle', 'tincidunt,', 21, 'eu.metus@dignissim.org'),
       (85, 'Valdez', 'Alika', 'egestas', 45, 'consectetuer.adipiscing.elit@dolorFuscemi.co.uk'),
       (86, 'Carroll', 'Sierra', 'euismod', 27, 'in@orci.edu'),
       (87, 'Gill', 'Fleur', 'sagittis', 49, 'natoque.penatibus.et@Suspendissealiquetmolestie.net'),
       (88, 'Justice', 'Acton', 'ipsum', 47, 'ante.ipsum.primis@Etiamimperdiet.co.uk'),
       (89, 'Keller', 'Hadassah', 'elit.', 50, 'dictum@Pellentesque.org'),
       (90, 'Salas', 'Gwendolyn', 'eget,', 47, 'sed@enimSednulla.com'),
       (91, 'Adams', 'Alfonso', 'ante.', 33, 'tristique.senectus.et@accumsan.com'),
       (92, 'Holcomb', 'Shana', 'suscipit,', 38, 'nunc.sed.pede@dui.net'),
       (93, 'Roach', 'Dahlia', 'semper.', 31, 'fringilla.ornare@Nuncmauris.edu'),
       (94, 'Mcgee', 'Shannon', 'orci', 42, 'nibh.sit.amet@Cum.ca'),
       (95, 'Knight', 'Garrett', 'lectus.', 43, 'scelerisque.mollis@iaculisneceleifend.co.uk'),
       (96, 'Pacheco', 'Lewis', 'sed', 27, 'orci@Crasvulputate.com'),
       (97, 'Tanner', 'Quamar', 'enim', 28, 'mi.lacinia@facilisisSuspendisse.com'),
       (98, 'Wolf', 'Blaze', 'risus', 32, 'Phasellus.fermentum@iderat.ca'),
       (99, 'Schultz', 'Jacqueline', 'Quisque', 29, 'in.felis@rutrum.org'),
       (100, 'Bowen', 'Stacey', 'turpis.', 36, 'Nam.interdum@Phasellus.net');


insert into users(id, first_name, last_name, username, email, age)
values (1, 'lukas', 'steinbrecher', 'lukstei', 'lukas@lukstei.com', 27),
       (2, 'steffi', 'xxx', 'steifxx', 'steffi@lukstei.com', 27),
       (3, 'david', 'alaba', 'alaba', 'david@bayern.com', 27);

