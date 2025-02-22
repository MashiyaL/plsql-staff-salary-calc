declare
sname varchar2(10);
sjob varchar2(9);
deptname varchar2(14);
location varchar2(13);
salary number(7,2);
sgrade number;
annual_sal number(7,2);
adj_sal number(7,2);

BEGIN
SELECT ENAME,JOB,DNAME,LOC,SAL,GRADE
INTO SNAME,SJOB,DEPTNAME,LOCATION,SALARY,SGRADE
FROM EMP , DEPT , SALGRADE
WHERE EMP.DEPTNO = DEPT.DEPTNO 
AND SAL BETWEEN LOSAL AND HISAL 
AND EMPNO=&STAFFNO;

annual_sal := salary*12;
adj_sal := annual_sal*1.25;
DBMS_OUTPUT.PUT_LINE(sname||'('||sjob||') works in '||deptname||'/'|| location||' earning R'||salary||' on grade '||sgrade);
DBMS_OUTPUT.PUT_LINE('ANNUAL SALARY :' || annual_sal);
DBMS_OUTPUT.PUT_LINE('25% Salary Adjustment  :' || adj_sal);
END;
/
