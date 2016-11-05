SHOW DATABASES;
USE scott;
SELECT *FROM scott.emp;
SELECT JOB,HIREDATE
FROM scott.emp
WHERE JOB='SALESMAN';
SELECT *FROM scott.emp
WHERE JOB='SALESMAN'
AND HIREDATE='1981-02-20';
SELECT *FROM scott.emp
WHERE JOB='SALESMAN'
OR HIREDATE>'1982-1-1';
SELECT *FROM scott.emp
LIMIT 0,3;
SELECT ENAME
FROM scott.emp
LIMIT 6,3;
SELECT *
FROM scott.emp
WHERE ENAME
LIKE '_A%';
SELECT ENAME,SAL+ifnull(COMM,0)
FROM scott.emp;
SELECT *FROM scott.emp;
SELECT *FROM scott.dept;
SELECT ENAME,DNAME
FROM scott.emp
JOIN scott.dept
ON emp.DEPTNO = dept.DEPTNO;
SELECT ENAME,DNAME
FROM scott.emp
LEFT JOIN scott.dept
  ON emp.DEPTNO = dept.DEPTNO
UNION
SELECT ENAME,DNAME
FROM scott.emp
  RIGHT JOIN scott.dept
    ON emp.DEPTNO = dept.DEPTNO;


