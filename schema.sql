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

