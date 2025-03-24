SELECT P.project_id, round(avg(E.experience_years), 2) as average_years
FROM Project P left join Employee E USING (employee_id)
Group by 1