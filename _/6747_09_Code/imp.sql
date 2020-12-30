imp system/sys1234 FROMUSER=hr TOUSER=test FILE=c:\fulldb_exp.dmp LOG=c:\fulldb_imp.log
-- Import schema
imp system/sys1234 FROMUSER=hr TOUSER=test FILE=c:\hr_exp.dmp LOG=c:\hr_imp.log
-- Import a table
imp hr/******** FROMUSER=hr TOUSER=test FILE=c:\hr_employees_exp.dmp LOG=c:\hr_employees_imp.log
