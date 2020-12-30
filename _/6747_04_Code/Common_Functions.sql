-- UPPER and LOWER functions
SELECT UPPER(first_name), LOWER(first_name) FROM employees WHERE employee_id = 127;


-- Concatenation
SELECT first_name || last_name fullname FROM employees WHERE employee_id = 127;

-- Trim functions
SELECT '      ' || first_name without_trim,
       ltrim( '      ' || first_name) with_trim
 FROM employees
WHERE employee_id = 127;


-- LTRIM function
SELECT ltrim( first_name, 'J') FROM employees WHERE employee_id = 127;


-- LPAD function
SELECT LPAD(first_name, 10, 'x') lpad_ex, RPAD(first_name, 10, 'x') rpad_ex
  FROM employees
 WHERE employee_id = 127;


-- Sub string function
SELECT SUBSTR(first_name, 2, 3) FROM employees WHERE employee_id = 127;


-- Aggregate functions
SELECT COUNT(*), MIN(salary), MAX(salary), AVG(salary) FROM employees;


-- ADD_MONTHS function
SELECT hire_date, ADD_MONTHS(hire_date, 2) FROM employees WHERE employee_id = 127;

-- Conversion functions
SELECT  TO_NUMBER('11') tonum,
        TO_CHAR('test') tochar,
        TO_DATE('01-01-2012', 'dd-mm-yyyy') todate
  FROM dual;

