Select * from Worker where DEPARTMENT like 'Admin%';
Select * from Worker where FIRST_NAME like '_____h';
SELECT COUNT(*) FROM worker WHERE DEPARTMENT = 'Admin';
SELECT * FROM Worker WHERE MOD (WORKER_ID, 2) <> 0;
SELECT * FROM Worker WHERE MOD (WORKER_ID, 2) = 0;
SELECT CURDATE();
SELECT NOW();
SELECT getdate();
SELECT SYSDATE FROM DUAL;
SELECT distinct Salary from worker a WHERE 3 >= (SELECT count(distinct Salary) from worker b WHERE a.Salary <= b.Salary) order by a.Salary desc;
Select max(Salary) from Worker 
where Salary not in (Select max(Salary) from Worker);


 




