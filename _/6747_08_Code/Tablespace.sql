-- Create a tablespace
CREATE TABLESPACE test_ts DATAFILE 'c:\oraclexe\app\oracle\oradata\xe\test_ts01.dbf' 
SIZE 200M 
AUTOEXTEND ON NEXT 20M;

-- Add a datafile
ALTER TABLESPACE test_ts
  ADD DATAFILE 'c:\oraclexe\app\oracle\oradata\xe\test_ts02.dbf' SIZE 100M;


-- Remove a tablespace
DROP TABLESPACE test_ts;


-- Remove a tablespace
DROP TABLESPACE test_ts INCLUDING CONTENTS AND DATAFILES;

-- Tablespace usage information
SELECT ddf.tablespace_name,
           ROUND(SUM(ddf.bytes)/1024/1024) Total_mb,
           ROUND(SUM(ddf.bytes)/1024/1024) - dfs.Free_mb Used_mb,
           dfs.Free_mb
      FROM dba_data_files ddf,
           (SELECT tablespace_name,
                   ROUND(SUM(bytes)/1024/1024) Free_mb
              FROM dba_free_space
             GROUP BY tablespace_name) dfs
    WHERE dfs.tablespace_name = ddf.tablespace_name
    GROUP BY ddf.tablespace_name, dfs.Free_mb
   UNION ALL
  SELECT tablespace_name,
          ROUND(SUM(bytes_used + bytes_free)/1024/1024) Total_mb,
          ROUND(SUM(bytes_used)/1024/1024) Used_mb,
          ROUND(SUM(bytes_free)/1024/1024) Free_mb
   FROM V$temp_space_header
   GROUP BY tablespace_name;


-- Querying flash recovery area

set line 100
column name format a45

SELECT name,
       ROUND(space_limit/1024/1024) space_limit,
       ROUND(space_used/1024/1024) space_used,
       ROUND(space_reclaimable/1024/1024) space_reclaimable
FROM v$recovery_file_dest;
