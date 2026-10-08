CREATE OR REPLACE FUNCTION fn_validate_payroll (
    p_employee_id NUMBER
) RETURN VARCHAR2
IS
    v_salary NUMBER;
    v_department_id NUMBER;
    v_count NUMBER;
BEGIN
    SELECT monthly_salary, department_id
    INTO v_salary, v_department_id
    FROM employees
    WHERE employee_id = p_employee_id;

    IF v_salary IS NULL OR v_salary <= 0 THEN
        RETURN 'INVALID: Salary must be greater than 0';
    END IF;

    SELECT COUNT(*) INTO v_count
    FROM departments
    WHERE department_id = v_department_id;

    IF v_count = 0 THEN
        RETURN 'INVALID: Department does not exist';
    END IF;

    RETURN 'VALID: Payroll information is correct';
EXCEPTION
    WHEN NO_DATA_FOUND THEN
        RETURN 'INVALID: Employee does not exist';
END;
/
