/*Queries that provide answers to the questions from all projects.*/

SELECT * from animals WHERE name = 'Luna';
select * from animals where name like '%mon%';
select name from animals where date_of_birth between '2016-01-01' and '2019-01-01';
select * from animals where neutered ='1' and escape_attempts < 3;
select date_of_birth from animals where name like 'Agumon' or name like 'Pikachu';
select name, escape_attempts from animals where weight_kg > 10.5;
 select name from animals where neutered = '1';
 select name from animals where name not like 'Gabumon';
  select name from animals where weight_kg between 10.4 and 17.3;