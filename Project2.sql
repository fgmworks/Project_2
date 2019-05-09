-- create the database 
create database project_db;
use project_db;

-- create table for each dataset
create table inspection_table;

create table rating_table;


-- check if the datasets were loaded in the data base
select*from inspection_table;
select*from rating_table;

-- join the tables
select inspection_table.id, inspection_table.name, inspection_table.grade, inspection_table.violation, inspection_table.grade_date, rating_table.average_review, inspection_table.zipcode
from inspection_table
inner join rating_table
on inspection_table.name = rating_table.name;


