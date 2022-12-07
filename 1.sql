CREATE OR FUNCTION func() RETURNS integer AS $$
<< outerblock >>
DECLARE
	empname varchar := 'Иванов Иван Иванович';
BEGIN
	SELECT *
	FROM employees
	WHERE full_name = emp_name;

	IF NOT FOUND THEN
		RAISE EXCEPTION 'Сотрудник % не найден!', emp_name;
	END IF;
END;
$$ LANGUAGE plpgsql;
