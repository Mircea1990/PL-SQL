SET SERVEROUTPUT ON;
/****************** Searched Case Expression ****************/
DECLARE
  v_job_code        VARCHAR2(10) := 'IT_PROG';
  v_department      VARCHAR2(10) := 'IT';
  v_salary_increase NUMBER;
BEGIN
  v_salary_increase:=CASE
                      WHEN v_job_code   = 'SA_MAN' THEN 0.2
                      WHEN v_department = 'IT' AND v_job_code = 'IT_PROG' THEN 0.3
                     ELSE 0
                     END;
  dbms_output.put_line('Your salary increase is : '|| v_salary_increase);
END;
 