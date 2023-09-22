-- ///////// Home Work I //////////  --
    
      select *
      from employees;
      
      
/*1) найти всех сотрудников, c jobid = ITPROG*/
      select
      employee_id,
      first_name,
      last_name,
      email,
      phone_NUMERIC,
      job_id,
      commission_pct,
      manager_id,
      department_id,
      salary
      from employees
      where job_id = 'IT_PROG';

/*2) найти сотрудников, с зп больше 10 000 */
      select
      employee_id,
      first_name,
      last_name,
      email,
      phone_NUMERIC,
      job_id,
      commission_pct,
      manager_id,
      department_id,
      salary
      from employees
      where salary > 10000;
      
/*3) найти сотрудников, с зп от 10 000 до 20 000 (включая концы)*/
      select
      employee_id,
      first_name,
      last_name,
      email,
      phone_NUMERIC,
      job_id,
      commission_pct,
      manager_id,
      department_id,
      salary
      from employees
      where salary between '10000.%' and '20000.%';
      
/*4) найти сотрудников не из 60, 30 и 100 департамента */
       select
      employee_id,
      first_name,
      last_name,
      email,
      phone_NUMERIC,
      job_id,
      commission_pct,
      manager_id,
      department_id,
      salary
      from employees
      where department_id not in(60,30,100);
      
/*5) найти сотрудников, у которых фамилия кончается на a */
        select
      employee_id,
      first_name,
      last_name,
      email,
      phone_NUMERIC,
      job_id,
      commission_pct,
      manager_id,
      department_id,
      salary
      from employees
      where last_name like '%a';
      
/*6) вывести зарплату сотрудника с именем ‘Lex’ и фамилией ‘De Haan */
  select
      first_name,
      last_name,
      salary
      from employees
      where first_name  = 'Lex' and last_name = 'De Haan';


/*7) найти всех сотрудников, работающих в департаменте с id 90 */
  select
      employee_id,
      first_name,
      last_name,
      email,
      phone_NUMERIC,
      job_id,
      commission_pct,
      manager_id,
      department_id,
      salary
      from employees
      where department_id in(90);
      
      select *
      from departments;
      
/*1)найти все департаменты, у которых location_id 1700 */ 
      select
      department_id,
      department_name,
      manager_id,
      location_id
      from departments
      where location_id = 1700;
      
      


      
 
      
      

      
      

        


