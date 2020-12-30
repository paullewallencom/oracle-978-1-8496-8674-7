CREATE OR REPLACE FUNCTION get_dept_name(p_department_id IN departments.department_id%TYPE) 
    RETURN VARCHAR2 IS
  l_department_name departments.department_name%TYPE;
BEGIN
  SELECT department_name INTO l_department_name 
    FROM departments
   WHERE department_id = p_department_id;

  RETURN(l_department_name);
END get_dept_name;
/
