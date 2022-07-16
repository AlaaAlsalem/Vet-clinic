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


* What animals belong to Melody Pond? */
SELECT name FROM animals A
    JOIN owners O
    ON A.owner_id = O.id
    WHERE O.full_name = 'Melody Pond';

SELECT A.name FROM animals A
    JOIN species S
    ON A.species_id = S.id
    WHERE S.name = 'Pokemon';

SELECT full_name, name FROM owners O
    LEFT JOIN animals A
    ON O.id = A.owner_id;

SELECT S.name, COUNT(A.name) FROM species S
    LEFT JOIN animals A
    ON S.id = a.species_id
    GROUP BY s.name;

SELECT A.name FROM owners O
    LEFT JOIN animals A
    ON O.id = A.owner_id
    LEFT JOIN species S
    ON A.species_id = S.id
    WHERE full_name = 'Jennifer Orwell' AND S.name = 'Digimon';

SELECT name FROM owners O
    JOIN animals A
    ON O.id = A.owner_id
    WHERE O.full_name = 'Dean Winchester' AND escape_attempts = 0;

SELECT full_name, COUNT(name) FROM owners O
    LEFT JOIN animals A
    ON O.id = A.owner_id
    GROUP BY full_name;

SELECT full_name, COUNT(name) FROM owners O
    LEFT JOIN animals A
    ON O.id = A.owner_id   GROUP BY full_name 
    ORDER BY COUNT(name) 
    DESC LIMIT 1;



    
SELECT A.name FROM vets VE
    LEFT JOIN visits VI
    ON VE.id = VI.vet_id
    LEFT JOIN animals A
    ON VI.animal_id = A.id
    WHERE VE.name = 'William Tatcher'
    ORDER BY VI.date DESC
    LIMIT 1;

SELECT COUNT(VI.animal_id) FROM vets VE
    LEFT JOIN visits VI
    ON VE.id = VI.vet_id
    WHERE VE.name = 'Stephanie Mendez'
    GROUP BY VE.name;

SELECT V.name, SP.name FROM vets V
    LEFT JOIN specializations S
    ON S.vet_id = V.id
    LEFT JOIN species SP
    ON S.species_id = SP.id;

SELECT A.name FROM vets VE
    LEFT JOIN visits VI
    ON VE.id = VI.vet_id
    LEFT JOIN animals A
    ON VI.animal_id = A.id
    WHERE VE.name = 'Stephanie Mendez' AND VI.date >= '2020-04-01' AND VI.date <= '2020-08-30';

SELECT A.name FROM animals A
    LEFT JOIN visits V
    ON A.id = V.animal_id
    GROUP BY A.name
    ORDER BY COUNT(date) DESC
    LIMIT 1;

SELECT A.name FROM vets VE
    LEFT JOIN visits VI
    ON VE.id = VI.vet_id
    LEFT JOIN animals A
    ON VI.animal_id = A.id
    WHERE VE.name = 'Maisy Smith'
    ORDER BY VI.date ASC
    LIMIT 1;

SELECT * FROM animals A
    JOIN visits VI
    ON A.id = VI.animal_id
    JOIN vets VE
    ON VI.vet_id = VE.id
    ORDER BY VI.date DESC
    LIMIT 1;

SELECT 20 - COUNT(*) FROM visits VI
    JOIN vets VE
    ON VI.vet_id = VE.id
    JOIN animals A
    ON VI.animal_id = A.id
    LEFT JOIN specializations S
    ON VI.vet_id = S.vet_id
    WHERE A.species_id = S.species_id;

SELECT S.name FROM vets VE
    LEFT JOIN visits VI
    ON VE.id = VI.vet_id
    JOIN animals A
    ON VI.animal_id = A.id
    JOIN species S
    ON A.species_id = S.id
    WHERE VE.name = 'Maisy Smith'
    GROUP BY S.name
    ORDER BY COUNT(VI.date) DESC
    LIMIT 1;