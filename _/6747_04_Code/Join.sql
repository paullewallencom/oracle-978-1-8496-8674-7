SELECT e.employee_id, e.first_name, e.last_name, j.job_title
  FROM employees e, jobs j
 WHERE e.job_id = j.job_id;
