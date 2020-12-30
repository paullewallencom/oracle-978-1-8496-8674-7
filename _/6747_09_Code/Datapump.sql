SQL> CREATE OR REPLACE DIRECTORY exp_dir AS ‘c:\oraclexe\exp_dumps’;
SQL> GRANT READ, WRITE ON DIRECTORY exp_dir TO hr;

-- Export full database
expdp system/******** FULL=y DIRECTORY=exp_dir DUMPFILE=fulldb_exp.dmp LOGFILE=fulldb_exp.log

-- Export a schema
expdp hr/******** SCHEMAS=hr DIRECTORY=exp_dir DUMPFILE=hr_expdp.dmp LOGFILE=hr_expdp.log
-- Export a table
expdp hr/******** TABLES=employees DIRECTORY=exp_dir DUMPFILE=emp_expdp.dmp LOGFILE=emp_expdp.log


-- Import Full database
impdp system/******** FULL=y DIRECTORY=exp_dir DUMPFILE=fulldb_exp.dmp LOGFILE=fulldb_imp.log

-- Import schema
impdp hr/******** SCHEMAS=hr DIRECTORY=exp_dir DUMPFILE=hr_expdp.dmp LOGFILE=hr_impdp.log

-- Import a table
impdp hr/******** TABLES=employees DIRECTORY=exp_dir DUMPFILE=emp_expdp.dmp LOGFILE=emp_impdp.log
