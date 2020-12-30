-- Explain Plan

EXPLAIN PLAN FOR
SELECT e.emp_no, e.emp_name, d.dept_name
FROM emp e, dept d
WHERE e.dept_no = d.dept_no;

-- Fetch the plan in a readable format
SELECT * FROM TABLE(dbms_xplan.display(null, null, 'basic'));
