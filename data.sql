/* Populate database with sample data. */

INSERT INTO animals (name) VALUES ('Luna');
INSERT INTO animals (name) VALUES ('Daisy');
INSERT INTO animals (name) VALUES ('Charlie');
insert into animals(name,date_of_birth, neutered, weight_kg) VALUES ('Agumon', '2022-02-03','1' , 10.23);
insert into animals(name,date_of_birth,escape_attempts, neutered, weight_kg) VALUES ('Gabumon', '2018-11-15',2,'1' , 8);
 insert into animals(name,date_of_birth,escape_attempts, neutered, weight_kg) VALUES ('Pikachu', '2021-01-07',1,'1' , 15.04);
 insert into animals(name,date_of_birth,escape_attempts, neutered, weight_kg) VALUES ('Devimon', '20170-05-12',5,'1' , 11);


 
insert into animals 
(name,date_of_birth,neutered,escape_attempts,weight_kg)
 values('Charmander','2020-02-08','0',0,11);

 insert into animals 
(name,date_of_birth,neutered,escape_attempts,weight_kg)
 values('Plantmon','2021-11-15','1',2,5.7);

 
insert into animals 
(name,date_of_birth,neutered,escape_attempts,weight_kg)
 values('Squirtle','1993-09-02','0',3,12.13);

 insert into animals 
(name,date_of_birth,neutered,escape_attempts,weight_kg)
 values('Angemon','2005-06-12','1',1,45);

insert into animals 
(name,date_of_birth,neutered,escape_attempts,weight_kg) 
values('Boarmon','2005-06-07','1',7,20.4);


insert into animals 
(name,date_of_birth,neutered,escape_attempts,weight_kg) 
values('Blossom','1998-10-13','1',3,17);git 





 insert into animals
 (name,date_of_birth,neutered,escape_attempts,weight_kg)
 values('Ditto','2022-05-14','1',4,22);

 INSERT INTO owners (full_name, age) VALUES('Sam Smith', 34);
INSERT INTO owners (full_name, age) VALUES('Jennifier Orwell', 19);
INSERT INTO owners (full_name, age) VALUES('Bob', 45);
INSERT INTO owners (full_name, age) VALUES('Melody Pond', 77);
INSERT INTO owners (full_name, age) VALUES('Dean Winchester', 14);
INSERT INTO owners (full_name, age) VALUES('Jodie Whittaker', 38);


INSERT INTO species (name) VALUES('Pokemon');
INSERT INTO species (name) VALUES('Digimon');



UPDATE animals 
SET species_id = 1
WHERE name LIKE '%mon';

UPDATE animals
SET species_id = 2
WHERE name NOT LIKE '%mon';

UPDATE animals 
SET owner_id = 1
WHERE name = 'Agumon';

UPDATE animals 
SET owner_id = 2
WHERE name = 'Gabumon' OR name = 'Pikachu';

UPDATE animals 
SET owner_id = 3
WHERE name = 'Devimon' OR name = 'Plantmon';

UPDATE animals 
SET owner_id = 4
WHERE name = 'Charmander' OR name = 'Squirtle' OR name = 'Blossom';

UPDATE animals 
SET owner_id = 5
WHERE name = 'Angemon' OR name = 'Boarmon';






INSERT INTO vets (name, age, date_of_graduation) VALUES
    ('William Tatcher', 45, '2000-04-23'),
    ('Maisy Smith ',  26, '2019-01-17'),
    ('Stephanie Mendez', 64, '1981-05-4'),
    ('Jack Harkness',  38, '2008-06-08');

INSERT INTO specializations (vet_id, species_id) VALUES
    (1, 1),
    (3, 1),
    (3, 2),
    (4, 2);

INSERT INTO visits (animal_id, vet_id, date) VALUES
    (2, 1, '2020-05-24'),
    (3, 3, '2020-07-22'),
    (2, 4, '2021-02-02'),
    (3, 2, '2020-01-05'),
    (3, 2, '2020-03-08'),
    (3, 2, '2020-05-14'),
    (2, 3, '2021-03-04'),
    (5, 4, '2021-02-24'),
    (6, 2, '2019-12-21'),
    (6, 1, '2020-08-10'),
    (6, 2, '2021-04-07'),
    (7, 3, '2019-09-29'),
    (8, 4, '2020-10-03'),
    (8, 4, '2020-11-04'),
    (9, 2, '2019-01-24'),
    (9, 2, '2019-03-15'),
    (9, 2, '2020-02-27'),
    (9, 2, '2020-08-03'),
    (10, 3, '2020-05-24'),
    (10, 1, '2021-01-11');