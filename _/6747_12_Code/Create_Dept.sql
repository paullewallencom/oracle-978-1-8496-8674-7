-- Create DEPT table
SQL> CREATE TABLE dept (dept_no NUMBER(3) PRIMARY KEY, dept_name VARCHAR2(30));

-- Alter EMP table to add DEPT_NO column & foreign key
SQL> ALTER TABLE emp ADD (dept_no NUMBER(3) REFERENCES dept(dept_no));
