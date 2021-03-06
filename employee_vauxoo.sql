--SQL1--

CREATE TABLE employee (
    id INTEGER PRIMARY KEY NOT NULL,
    first_name VARCHAR(25),
    last_name VARCHAR(25)
);

CREATE TABLE employee_department (
    id INTEGER PRIMARY KEY NOT NULL,
    name VARCHAR(50),
    description TEXT
);

ALTER TABLE employee ADD COLUMN id_departament integer NOT NULL;
ALTER TABLE employee ADD CONSTRAINT id_departament_constraint FOREIGN KEY (id_departament) REFERENCES employee_department (id);

INSERT INTO employee_department(id, name, description)
    VALUES
    (1, 'Recursos Humanos', 'Manage people to ensure compliance with the various functions in each day and that jobs are always covered, apply formulas hiring more appropriate in each case, remunerates workers and keeps them motivated.'),
    (2, 'Marketing', 'Commercial collaborates to get more sales and better serve customers.'),
    (3, 'Odoo Developer', 'Develop apps/features that users care about'),
    (4, 'Direct Sale Consultant', 'Enhancing the sales business unit'),
    (5, 'Python Developer', 'Develops apps/scripts/features that your team need it and users care about'),
    (6, 'Business Analyst', 'Provide services to our customers');

INSERT INTO employee(id, first_name, last_name, id_departament)
    VALUES
    (1, 'Hembert Andres', 'Iregui Navarro', 5),
    (2, 'Daniela', 'Ocanto', 1),
    (3, 'Daniel', 'Perez', 6),
    (4, 'Pablo', 'Pacheco', 3);

--END SQL1--

--SQL2--

CREATE TABLE employee_hobby (
    id INTEGER PRIMARY KEY NOT NULL,
    name VARCHAR(50),
    description TEXT
);

CREATE TABLE employee_hobbies (
   employee_id INTEGER NOT NULL REFERENCES employee(id),
   employee_hobby_id INTEGER NOT NULL REFERENCES employee_hobby(id)
 );

INSERT INTO employee_hobby (id, name, description)
    VALUES
    (1, 'Futbol', 'Cup Vauxoo'),
    (2, 'Domino', 'World Domino Tournament Vauxoo'),
    (3, 'Maraton Programacion', 'Challenge Vauxoo');

INSERT INTO employee_hobbies (employee_id,employee_hobby_id)
	VALUES
	(1,1),
	(1, 2),
	(1, 3),
	(2, 1),
	(2, 2),
	(3, 1),
	(3, 2),
	(4, 2),
	(4, 3);
--END SQL2--

--SQL3--

ALTER TABLE employee ADD COLUMN id_boss integer;
ALTER TABLE employee ADD CONSTRAINT id_boss_employee FOREIGN KEY (id_boss) REFERENCES employee (id);


UPDATE employee SET id_boss = 3 WHERE id = 1;
UPDATE employee SET id_boss = 4 WHERE id = 2;
UPDATE employee SET id_boss = 1 WHERE id = 3;
UPDATE employee SET id_boss = 3 WHERE id = 4;

--END SQL3--