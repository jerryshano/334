-------------------------------------------------------------------------------
-- Edit this file by adding your SQL below each question.
-------------------------------------------------------------------------------

-------------------------------------------------------------
-- The following queries are based on the 1994 census data.
-------------------------------------------------------------

.read 1994-census-summary-1.sql

-- 4. what is the average age of people from China?
select avg(age) from census where native_country ='China';

-- 5. what is the average age of people from Taiwan?
select avg(age) from census where native_country ='Taiwan';

-- 6. which native countries have "land" in their name?
select distinct(native_country) from census where native_country like '%land%';

--------------------------------------------------------------------------------------
-- The following queries are based on the courses-ddl.sql and courses-small.sql data
--------------------------------------------------------------------------------------

drop table census;
.read courses-ddl.sql
.read courses-small-1.sql

-- 11. what are the names of all students who have taken some course? Don't show duplicates.
select distinct(name) from student where tot_cred > 0;

-- 12. what are the names of departments that offer 4-credit courses? Don't list duplicates.
select distinct(dept_name) from course where credits=4;

-- 13. What are the names and IDs of all students who have received an A in a computer science class?
select distinct(name), id from student natural join takes natural join course where dept_name="Comp. Sci." and grade="A";

