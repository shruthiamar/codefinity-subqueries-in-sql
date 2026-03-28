SELECT d.name FROM departments d
    JOIN employees e 
    ON d.department_id = e.department_id
    GROUP BY e.department_id, d.name
    HAVING AVG(e.salary) > (SELECT AVG(salary) FROM employees);