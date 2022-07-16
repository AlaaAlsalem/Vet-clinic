/*Queries that provide answers to the questions from all projects.*/

SELECT * from animals WHERE name = 'Luna';
select * from animals where name like '%mon%';
select name from animals where date_of_birth between '2016-01-01' and '2019-01-01';
select * from animals where neutered ='1' and escape_attempts <3;
select date_of_birth from animals where name like 'Agumon' or name like 'Pikachu';
select name, escape_attempts from animals where weight_kg > 10.5;
 select name from animals where neutered = '1';
 select name from animals where name not like 'Gabumon';
  select name from animals where weight_kg between 10.4 and 17.3;

  
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
values('Blossom','1998-10-13','1',3,17);





 insert into animals
 (name,date_of_birth,neutered,escape_attempts,weight_kg)
 values('Ditto','2022-05-14','1',4,22);


BEGIN;
UPDATE animals SET species = 'unspecified';
SELECT species FROM animals;
ROLLBACK;
SELECT species FROM animals;
END;

BEGIN;
UPDATE animals SET species = 'digimon' WHERE name LIKE '%mon';
UPDATE animals SET species = 'pokemon' WHERE name IS NULL;
SELECT species FROM animals;
COMMIT;
SELECT species FROM animals;
END;

BEGIN;
DELETE FROM animals;
SELECT species FROM animals;
ROLLBACK;
SELECT species FROM animals;
END;




BEGIN;
DELETE FROM animals WHERE date_of_birth > '2022-01-01';
SAVEPOINT remove_Ditto;
UPDATE animals SET weight_kg = weight_kg * -1;
ROLLBACK TO remove_Ditto;
UPDATE animals SET weight_kg = weight_kg * -1 WHERE weight_kg < 0;
COMMIT;
END;

SELECT COUNT(*) FROM animals;
SELECT COUNT(*) FROM animals GROUP BY escape_attempts HAVING escape_attempts = 0;
SELECT AVG(weight_kg) FROM animals;
SELECT neutered, SUM(escape_attempts) FROM animals GROUP BY neutered;
SELECT species, MIN(weight_kg) AS min_weight_kg, MAX(weight_kg) AS max_weight_kg  FROM animals GROUP BY species;
SELECT species, AVG(escape_attempts) AS avg_escape_attempts  FROM animals WHERE date_of_birth >= '1990-01-01' AND date_of_birth <= '2000-12-31' GROUP BY species;

