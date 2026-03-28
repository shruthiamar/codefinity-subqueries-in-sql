SELECT d.name AS department_name, e.name AS employee_name, e.salary FROM departments d JOIN employees e 
    ON d.department_id = e.department_id
    WHERE e.salary = (
    SELECT MAX(e2.salary) FROM employees e2
    WHERE e2.department_id = e.department_id
    )
    ORDER BY d.name, e.name;