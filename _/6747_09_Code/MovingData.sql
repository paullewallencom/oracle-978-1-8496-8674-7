CREATE OR REPLACE DIRECTORY dump_dir AS ‘c:\xetest’;
GRANT READ,WRITE ON DIRECTORY dump_dir TO system;

-- Export the data from Oracle Database 10g XE
expdp system/******** full=Y EXCLUDE=SCHEMA:\"LIKE \'APEX_%\'\",SCHEMA:\"LIKE \'FLOWS_%\'\" directory=DUMP_DIR dumpfile=DB10G.dmp logfile=DB10G_expdp.log

expdp system/******** TABLES=FLOWS_FILES.WWV_FLOW_FILE_OBJECTS$ directory=DUMP_DIR dumpfile=DB10G2.dmp logfile=DB10G_expdp.log

-- Create a database directory object by connecting as SYS user. 
CREATE OR REPLACE DIRECTORY dump_dir AS ‘c:\xetest’;
GRANT READ, WRITE ON DIRECTORY dump_dir TO system;

-- Import data exported from Oracle Database 10g XE into Oracle Database 11g XE

impdp system/sys1234 full=Y directory=DUMP_DIR dumpfile=DB10G.dmp logfile=DB10G_impdp.log
impdp system/sys1234 directory=DUMP_DIR TABLE_EXISTS_ACTION=APPEND TABLES=FLOWS_FILES.WWV_FLOW_FILE_OBJECTS$ dumpfile=DB10G2.dmp logfile=DB10G_impdp.log
