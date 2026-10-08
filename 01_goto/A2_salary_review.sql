SET SERVEROUTPUT ON;

DECLARE
    v_salary NUMBER := 350000;
BEGIN
    IF v_salary >= 700000 THEN GOTO senior;
    ELSIF v_salary >= 300000 THEN GOTO standard;
    ELSE GOTO entry_level;
    END IF;

    <<senior>>
    DBMS_OUTPUT.PUT_LINE('Salary Review: Senior Level');
    GOTO finish;

    <<standard>>
    DBMS_OUTPUT.PUT_LINE('Salary Review: Standard Level');
    GOTO finish;

    <<entry_level>>
    DBMS_OUTPUT.PUT_LINE('Salary Review: Entry Level');

    <<finish>>
    DBMS_OUTPUT.PUT_LINE('Monthly Salary: ' || v_salary);
END;
/
