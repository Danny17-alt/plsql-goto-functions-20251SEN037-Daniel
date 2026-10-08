SET SERVEROUTPUT ON;

DECLARE
    v_salary NUMBER := 350000;
BEGIN
    IF v_salary >= 700000 THEN
        DBMS_OUTPUT.PUT_LINE('Salary Review: Senior Level');
    ELSIF v_salary >= 300000 THEN
        DBMS_OUTPUT.PUT_LINE('Salary Review: Standard Level');
    ELSE
        DBMS_OUTPUT.PUT_LINE('Salary Review: Entry Level');
    END IF;

    DBMS_OUTPUT.PUT_LINE('Monthly Salary: ' || v_salary);
END;
/
