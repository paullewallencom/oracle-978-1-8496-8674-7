CREATE OR REPLACE PACKAGE emp_pack IS
  -- Function to retrieve department name
  FUNCTION get_dept_name(p_department_id IN departments.department_id%TYPE) RETURN VARCHAR2;
  -- Increment salary
  PROCEDURE salary_increment (p_emp_no IN emp.emp_no%TYPE);

END emp_pack;
/

