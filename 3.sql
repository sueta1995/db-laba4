ALTER TABLE employees
ADD COLUMN employee_info tsvector;
UPDATE employees
SET employee_info = to_tsvector('english', full_name || ' ' || function);

CREATE INDEX employee_info_index ON employees USING GIN (employee_info);
