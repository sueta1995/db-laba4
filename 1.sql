emp_name := 'Иванов Иван Иванович'

SELECT *
FROM employees
WHERE full_name = emp_name;

IF NOT FOUND THEN
	RAISE EXCEPTION 'Сотрудник % не найден!', emp_name;
END IF;	
