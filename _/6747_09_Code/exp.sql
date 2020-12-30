-- Export full database
exp system/******** FULL=y FILE=c:\fulldb_exp.dmp LOG= c:\fulldb_exp.log
-- Export a User by connecting to the database with DBA privilege
exp system/******** OWNER=hr FILE=c:\hr_exp.dmp LOG=c:\hr_exp.log
-- Export a User itself
exp hr/******** file=c:\hr_exp.dmp log=c:\hr_exp.log
-- Export a table
exp hr/******** TABLES=employees FILE=c:\hr_employees_exp.dmp LOG= c:\hr_employees_exp.log
