SELECT DISTINCT employee.id, employee.nik, employee.name, employee.is_active, 
employee_profile.gender,
education.name, education.level
FROM employee
JOIN employee_profile ON employee.id = employee_profile.id
LEFT JOIN education ON employee.id = education.employee_id
LEFT JOIN employee_family ON employee.id = employee_family.employee_id;