-- Make a note of datafiles
SELECT name FROM v$datafile;


-- Make a note of Redo Log Files
SELECT member FROM v$logfile;


-- Make a note of temp files
SELECT name FROM v$tempfile;


