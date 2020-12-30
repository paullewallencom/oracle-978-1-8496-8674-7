-- Collect table statistics and all indexes that are created on that table
SQL> EXEC  DBMS_STATS.GATHER_TABLE_STATS(‘hr’, ‘emp’, estimate_percent => 100, cascade => TRUE);


-- Collect statistics on an index
SQL> EXEC  DBMS_STATS.GATHER_INDEX_STATS(‘hr’, ‘emp_pk’);

