-- Create a new sequence
CREATE SEQUENCE emp_seq;


-- Fetch a new value from emp_seq
SELECT emp_seq.NEXTVAL FROM dual;

-- Query the current value of emp_seq
SELECT emp_seq.CURRVAL FROM dual;



-- Modify sequence to increment by “2”
ALTER SEQUENCE emp_seq INCREMENT BY 2;


-- Permanently remove the sequence from the database
DROP SEQUENCE emp_seq;
