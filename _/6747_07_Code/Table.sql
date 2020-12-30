-- Create a new table
CREATE TABLE emp (
emp_no		NUMBER,		-- Field that will store employee number
emp_name 	VARCHAR2(50),	-- Field that will store employee’ name
date_of_birth	DATE,			-- Field that will store employee’s date of birth
salary		NUMBER(10,2)	-- Field that will store employee’ salary
);


-- Create a Primary Key Constraint
ALTER TABLE emp ADD CONSTRAINT emp_pk PRIMARY KEY (emp_no);


-- Create a sequence
CREATE SEQUENCE emp_seq;

