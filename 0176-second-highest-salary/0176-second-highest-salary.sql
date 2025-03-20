SELECT MAX(salary) AS SecondHighestSalary
FROM employee
WHERE employee.salary < (
    SELECT MAX(salary)
    FROM employee
)