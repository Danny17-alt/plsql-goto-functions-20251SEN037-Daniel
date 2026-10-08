CREATE OR REPLACE FUNCTION fn_calculate_tax (
    p_salary NUMBER
) RETURN NUMBER
IS
    v_tax NUMBER;
BEGIN
    IF p_salary <= 300000 THEN
        v_tax := p_salary * 0.05;
    ELSIF p_salary <= 700000 THEN
        v_tax := p_salary * 0.10;
    ELSE
        v_tax := p_salary * 0.15;
    END IF;
    RETURN v_tax;
END;
/
