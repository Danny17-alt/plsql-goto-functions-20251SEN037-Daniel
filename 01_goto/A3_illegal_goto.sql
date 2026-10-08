-- Intentionally illegal GOTO: jumps into an IF scope.
SET SERVEROUTPUT ON;

DECLARE
    v_score NUMBER := 80;
BEGIN
    GOTO inside_if;

    IF v_score >= 50 THEN
        <<inside_if>>
        DBMS_OUTPUT.PUT_LINE('Pass');
    END IF;
END;
/

-- Corrected version.
SET SERVEROUTPUT ON;

DECLARE
    v_score NUMBER := 80;
BEGIN
    IF v_score >= 50 THEN
        DBMS_OUTPUT.PUT_LINE('Pass');
    ELSE
        DBMS_OUTPUT.PUT_LINE('Fail');
    END IF;
END;
/
