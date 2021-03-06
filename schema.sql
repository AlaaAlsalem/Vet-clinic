/* Database schema to keep the structure of entire database. */

CREATE TABLE animals (
    id int generated always as identity,
    name varchar(100),
    date_of_birth date,
    escape_attempts int,
    neutered bit,
    weight_kg decimal
);

alter table animals add species varchar(50);


CREATE TABLE owners (
  id INT PRIMARY KEY NOT NULL GENERATED ALWAYS AS IDENTITY,
  full_name VARCHAR(100) NOT NULL,
  age INT
);


CREATE TABLE species (
  id INT PRIMARY KEY NOT NULL GENERATED ALWAYS AS IDENTITY,
  name VARCHAR(100) NOT NULL
);

ALTER TABLE animals DROP COLUMN species;

ALTER TABLE animals ADD COLUMN species_id INT;

ALTER TABLE animals ADD FOREIGN KEY (species_id) REFERENCES species(id);

ALTER TABLE animals ADD COLUMN owner_id INT;

ALTER TABLE animals ADD FOREIGN KEY (owner_id) REFERENCES owners(id);



CREATE TABLE vets(
    id    INT PRIMARY KEY NOT NULL GENERATED ALWAYS AS IDENTITY,
    name  VARCHAR(100) NOT NULL,
    age   INT,
    date_of_graduation DATE
);

CREATE TABLE specializations(
    species_id  INT NOT NULL,
    vet_id      INT NOT NULL,
    FOREIGN KEY (species_id) REFERENCES species(id) ON DELETE RESTRICT ON UPDATE CASCADE,
    FOREIGN KEY (vet_id) REFERENCES vets(id) ON DELETE RESTRICT ON UPDATE CASCADE,
    PRIMARY KEY (species_id, vet_id)
);

CREATE TABLE visits(
    animal_id   INT NOT NULL,
    vet_id      INT NOT NULL,
    date        DATE,
    FOREIGN KEY (animal_id) REFERENCES animals(id) ON DELETE RESTRICT ON UPDATE CASCADE,
    FOREIGN KEY (vet_id) REFERENCES vets(id) ON DELETE RESTRICT ON UPDATE CASCADE,
    PRIMARY KEY (animal_id, vet_id, date)
);