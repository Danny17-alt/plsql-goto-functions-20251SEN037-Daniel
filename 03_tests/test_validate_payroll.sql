SELECT employee_id, employee_name,
       fn_validate_payroll(employee_id) AS payroll_status
FROM employees
ORDER BY employee_id;

SELECT fn_validate_payroll(999) AS payroll_status FROM dual;
