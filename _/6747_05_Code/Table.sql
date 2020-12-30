-- Create a new table
CREATE TABLE emp (
emp_no		NUMBER,		-- Field that will store employee number
emp_name 	VARCHAR2(50),	-- Field that will store employee’ name
date_of_birth	DATE,			-- Field that will store employee’s date of birth
salary		NUMBER(10,2)	-- Field that will store employee’ salary
);


-- Modify table to add new columns
ALTER TABLE emp ADD (
nationality	VARCHAR2(30),
place_of_birth	VARCHAR2(30)
);



-- Remove a table 
DROP TABLE emp;


-- Check recyclebin for any dropped objects
SQL> SELECT * FROM recyclebin;


-- Recover the dropped table
SQL> FLASHBACK TABLE emp TO BEFORE DROP;


-- Query recycle bin
SQL> select * from recyclebin ;


-- Permanently remove a table from the database
SQL> DROP TABLE emp PURGE;
