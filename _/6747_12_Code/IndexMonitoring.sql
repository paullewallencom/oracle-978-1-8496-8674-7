-- Enable index monitoring 
ALTER INDEX hr.emp_department_ix MONITORING USAGE;

-- Disable index monitoring
ALTER INDEX emp_department_ix NOMONITORING USAGE;

-- Query V$OBJECT_USAGE view to find out whether the index was used or not
SELECT monitoring, used FROM v$object_usage
 WHERE index_name = 'EMP_DEPARTMENT_IX';
