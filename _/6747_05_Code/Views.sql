-- Create a new view
CREATE [OR REPLACE] VIEW salary_gr_1000 AS 
select emp_no, emp_name, salary 
FROM emp 
WHERE salary > 1000;


-- Compiling view
ALTER VIEW salary_gr_1000 COMPILE;


-- Permanently remove the view from the schema
DROP VIEW salary_gr_1000;


