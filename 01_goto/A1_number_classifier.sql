SET SERVEROUTPUT ON;

DECLARE
    v_score NUMBER := 88;
BEGIN
    IF v_score >= 85 THEN GOTO excellent;
    ELSIF v_score >= 70 THEN GOTO good;
    ELSIF v_score >= 50 THEN GOTO average;
    ELSE GOTO needs_improvement;
    END IF;

    <<excellent>>
    DBMS_OUTPUT.PUT_LINE('Performance: Excellent');
    GOTO finish;

    <<good>>
    DBMS_OUTPUT.PUT_LINE('Performance: Good');
    GOTO finish;

    <<average>>
    DBMS_OUTPUT.PUT_LINE('Performance: Average');
    GOTO finish;

    <<needs_improvement>>
    DBMS_OUTPUT.PUT_LINE('Performance: Needs Improvement');

    <<finish>>
    DBMS_OUTPUT.PUT_LINE('Score: ' || v_score);
END;
/
