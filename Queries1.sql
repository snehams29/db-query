SELECT FIRST_NAME AS WORKER_NAME FROM worker;
SELECT upper(FIRST_NAME)FROM worker;
SELECT DISTINCT DEPARTMENT from worker;
SELECT substring(FIRST_NAME,1,3)FROM worker;
SELECT INSTR(FIRST_NAME,BINARY 'a')from worker where FIRST_NAME='deepa';
SELECT RTRIM(FIRST_NAME)from Worker;
SELECT LTRIM(DEPARTMENT)from worker;
SELECT distinct length(DEPARTMENT)from worker;
SELECT REPLACE(FIRST_NAME,'a','A')from worker;
SELECT CONCAT(FIRST_NAME,'',LAST_NAME)AS 'COMPLETE_NAME' FROM WORKER;
SELECT *FROM worker order by FIRST_NAME asc;
SELECT *FROM worker order by FIRST_NAME asc, DEPARTMENT desc;
SELECT *FROM  worker WHERE FIRST_NAME in('sneha','varada');
SELECT *FROM worker where FIRST_NAME NOT IN ('sneha','varada');
SELECT *FROM worker where FIRST_NAME like '%a%';
SELECT *FROM worker where SALARY between 10000 and 50000;

