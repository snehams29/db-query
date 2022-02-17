SELECT * FROM advaita.worker;

1)SQL query to fetch “FIRST_NAME” from Worker table using the alias name as <WORKER_NAME>.

        SELECT FIRST_NAME AS WORKER_NAME FROM worker;

2)SQL query to fetch “FIRST_NAME” from Worker table in upper case.

        SELECT upper(FIRST_NAME)FROM worker;

3)SQL query to fetch unique values of DEPARTMENT from Worker table.

        SELECT DISTINCT DEPARTMENT from worker;

4)SQL query to print the first three characters of  FIRST_NAME from Worker table.

        SELECT substring(FIRST_NAME,1,3)FROM worker;

5)SQL query to find the position of the alphabet (‘a’) in the first name column ‘deepa’ from Worker table.

       SELECT INSTR(FIRST_NAME,BINARY 'a')from worker where FIRST_NAME='deepa';

6)SQL query to print the FIRST_NAME from Worker table after removing white spaces from the right side.

       SELECT RTRIM(FIRST_NAME)from Worker;

7)SQL query to print the DEPARTMENT from Worker table after removing white spaces from the left side.

       SELECT LTRIM(DEPARTMENT)from worker;

8)SQL query that fetches the unique values of DEPARTMENT from Worker table and prints its length.

        SELECT distinct length(DEPARTMENT)from worker;

9)SQL query to print the FIRST_NAME from Worker table after replacing ‘a’ with ‘A’.

        SELECT REPLACE(FIRST_NAME,'a','A')from worker;

10)  SQL query to print the FIRST_NAME and LAST_NAME from Worker table into a single column COMPLETE_NAME. A space char should separate them.

        SELECT CONCAT(FIRST_NAME,'',LAST_NAME)AS 'COMPLETE_NAME' FROM WORKER;

11)  SQL query to print all Worker details from the Worker table order by FIRST_NAME Ascending.

       SELECT *FROM worker order by FIRST_NAME asc;

12)  SQL query to print all Worker details from the Worker table order by FIRST_NAME Ascending and DEPARTMENT Descending.

       SELECT *FROM worker order by FIRST_NAME asc, DEPARTMENT desc;

13)  SQL query to print details for Workers with the first name as “sneha” and “varada” from Worker table.

      SELECT *FROM  worker WHERE FIRST_NAME in('sneha','varada');

15) SQL query to print details of workers excluding first names, “sneha” and “varada” from Worker table.

      SELECT *FROM worker where FIRST_NAME NOT IN ('sneha','varada');

16) SQL query to print details of the Workers whose FIRST_NAME contains ‘a’.

       SELECT *FROM worker where FIRST_NAME like '%a%';

17)  SQL query to print details of the Workers whose SALARY lies between 100000 and 500000.

       SELECT *FROM worker where SALARY between 10000 and 50000;

