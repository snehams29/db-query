18) SQL query to print details of Workers with DEPARTMENT name as “Admin”.

     Select * from Worker where DEPARTMENT like 'Admin%';

19) SQL query to print details of the Workers whose FIRST_NAME ends with ‘h’ and contains six alphabets.

     Select * from Worker where FIRST_NAME like '_____h';

20)SQL query to fetch the count of employees working in the department ‘Admin’

    SELECT COUNT(*) FROM worker WHERE DEPARTMENT = 'Admin';

21)SQL query to show only odd rows from a table.

  SELECT * FROM Worker WHERE MOD (WORKER_ID, 2) <> 0;

22)SQL query to show only even rows from a table.

   SELECT * FROM Worker WHERE MOD (WORKER_ID, 2) = 0;

23)SQL query to show the current date and time.

    SELECT CURDATE();

24) current date and time:

    SELECT NOW();

25)  current date and time:

     SELECT getdate();

26) current date and time:

    SELECT SYSDATE FROM DUAL;

27) SQL query to fetch three max salaries from a table.

        SELECT distinct Salary from worker a WHERE 3 >= (SELECT count(distinct Salary) from worker b WHERE a.Salary <= b.Salary) order by a.Salary desc;

28) SQL query to fetch  max salaries from a table.    
Select max(Salary) from Worker 
where Salary not in (Select max(Salary) from Worker);

..

 




