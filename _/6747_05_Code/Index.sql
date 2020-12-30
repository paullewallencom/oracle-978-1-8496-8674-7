-- Create a new index
CREATE INDEX salary_idx ON emp(salary);


-- Rebuild an index
ALTER INDEX salary_idx REBUILD;


-- Permanently remove the index from the database
DROP INDEX salary_idx;
