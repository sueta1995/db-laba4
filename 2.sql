ALTER TABLE projects
ADD COLUMN name_vector tsvector;
UPDATE projects
SET name_vector = to_tsvector('english', name);

CREATE INDEX textsearch_index ON projects USING GIN (name_vector);
