DROP TABLE emp_log PURGE;
CREATE TABLE emp_log ( emp_no NUMBER, Action VARCHAR2(10), date_created DATE);

CREATE OR REPLACE TRIGGER emp_log_after_row 
AFTER INSERT OR UPDATE OR DELETE ON emp
FOR EACH ROW
BEGIN
  -- Insert a record in the log table after every INSERT statement
  IF INSERTING THEN
    INSERT INTO emp_log VALUES (:NEW.emp_no, 'Insert', SYSDATE);
  
  -- Insert a record in the log table after every DELETE statement
  ELSIF DELETING THEN
    INSERT INTO emp_log VALUES (:OLD.emp_no, 'Delete', SYSDATE);
  
  -- Insert a record in the log table after every UPDATE statement
  ELSIF UPDATING THEN
    INSERT INTO emp_log VALUES (:NEW.emp_no, 'Update', SYSDATE);
  END IF;
  
END;
/
