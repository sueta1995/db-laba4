SELECT full_name
FROM employees
WHERE employee_info @@ to_tsquery('Johns & Administrator');
