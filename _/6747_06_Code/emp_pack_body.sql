CREATE OR REPLACE PACKAGE BODY emp_pack IS

  FUNCTION get_dept_name(p_department_id IN departments.department_id%TYPE) 
      RETURN VARCHAR2 IS
    l_department_name departments.department_name%TYPE;
  BEGIN
    SELECT department_name INTO l_department_name 
      FROM departments
     WHERE department_id = p_department_id;
  
    RETURN(l_department_name);
  END get_dept_name;

  PROCEDURE salary_increment (p_emp_no IN emp.emp_no%TYPE) IS
    l_salary emp.salary%TYPE;
  BEGIN
    -- Fetch current salary 
    SELECT salary INTO l_salary
      FROM emp
     WHERE emp_no = p_emp_no;
  
    -- If salary is greater than 1000 then give 2 percent increment
    IF l_salary > 1000 THEN
      l_salary := l_salary + (l_salary * 2 / 100);
  
    -- If salary is greater than 500 then give 5 percent increment
    ELSIF l_salary > 500 THEN
      l_salary := l_salary + (l_salary * 5 / 100);
  
    -- Otherwise give 10 percent increment
    ELSE 
      l_salary := l_salary + (l_salary * 10 / 100);
    END IF;
  
    -- Update the salary 
    UPDATE emp SET salary = l_salary
     WHERE emp_no = p_emp_no;
  
    COMMIT;
  
  END;

END emp_pack;
/
