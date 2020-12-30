-- Create function-based index
SQL> CREATE INDEX emp_name_fbi ON emp( UPPER(emp_name) );


set autotrace traceonly exp

select * from emp where UPPER(emp_name) = 'KARTY SHEEN'

set autotrace off