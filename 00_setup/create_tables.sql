CREATE TABLE departments (
    department_id NUMBER PRIMARY KEY,
    department_name VARCHAR2(50) NOT NULL
);

CREATE TABLE employees (
    employee_id NUMBER PRIMARY KEY,
    employee_name VARCHAR2(100) NOT NULL,
    department_id NUMBER,
    monthly_salary NUMBER(10,2),
    hire_date DATE,
    performance_score NUMBER(5,2),
    CONSTRAINT fk_employee_department FOREIGN KEY (department_id)
        REFERENCES departments(department_id)
);

INSERT INTO departments VALUES (10, 'Information Technology');
INSERT INTO departments VALUES (20, 'Finance');
INSERT INTO departments VALUES (30, 'Human Resources');
INSERT INTO departments VALUES (40, 'Sales');

INSERT INTO employees VALUES (101, 'Daniel', 10, 450000, DATE '2023-02-15', 88);
INSERT INTO employees VALUES (102, 'Aline', 20, 350000, DATE '2021-06-10', 76);
INSERT INTO employees VALUES (103, 'Eric', 30, 280000, DATE '2024-01-20', 91);
INSERT INTO employees VALUES (104, 'Kevin', 40, 650000, DATE '2019-09-05', 68);
INSERT INTO employees VALUES (105, 'Diane', 10, 900000, DATE '2018-03-12', 95);

COMMIT;
