     -- ///////// Home Work II //////////  --
      

/* 1) Выведите данные о билетах разной ценовой категории. 
Среди билетов экономкласса (Economy) добавьте в выборку 
— билеты с ценой от 10 000 до 11 000 включительно. 
Среди билетов комфорт-класса (PremiumEconomy) 
— билеты с ценой от 20 000 до 30 000 включительно. 
Среди билетов бизнес-класса (Business) 
— с ценой строго больше 100 000. 
В решении необходимо использовать оператор CASE.
В выборке должны присутствовать три атрибута — id, service_class, price.

*/
USE airport;
SELECT *
FROM tickets;

SELECT
id,
CASE 
WHEN price between 10000 and 11000
THEN 'Economy'
WHEN price between 20000 and 30000
THEN 'PremiumEconomy'
WHEN price > 100000 
THEN 'Business'
END AS service_class,
price
FROM tickets
WHERE price between 10000 and 11000
OR price between 20000 and 30000
OR price > 100000;


/*
2) Разделите самолеты на три класса по возрасту. 
Если самолет произведен раньше 2000 года,
то отнесите его к классу 'Old'. 
Если самолет произведен между 2000 и 2010 годами включительно, 
то отнесите его к классу 'Mid'. Более новые самолеты отнесите к классу 'New'. 
Исключите из выборки дальнемагистральные самолеты с максимальной дальностью полета больше 10000 км. 
Отсортируйте выборку по классу возраста в порядке возрастания.
В выборке должны присутствовать два атрибута — side_number, age.
*/

SELECT 
*
FROM airliners;

SELECT
side_number,
CASE 
WHEN production_year < 2000
THEN 'Old'
WHEN production_year between 2000 AND 2010
THEN 'Mid'
WHEN production_year > 2010
THEN 'New'
END AS age
FROM airliners
WHERE distance <10000;




/*
3)Руководство авиакомпании снизило цены на билеты 
рейсов LL4S1G8PQW, 0SE4S0HRRU и JQF04Q8I9G. 
Скидка на билет экономкласса (Economy) составила 15%, 
на билет бизнес-класса (Business) — 10%, 
а на билет комфорт-класса (PremiumEconomy) — 20%. 
Определите цену билета в каждом сегменте с учетом скидки.
В выборке должны присутствовать три атрибута — id, tripid, newprice.
 */
 
SELECT
*
FROM tickets;

SELECT
id,
trip_id,
CASE
WHEN service_class = 'Economy'
THEN price * 0.15
WHEN service_class = 'Business'
THEN price * 0.1
WHEN service_class = 'PremiumEconomy'
THEN price * 0.2
END AS new_price
FROM tickets
WHERE trip_id in ('LL4S1G8PQW','0SE4S0HRRU','JQF04Q8I9G');


/*
База HR:
1) Вывести сотрудников, чьи имена начинаются на букву D 
и отсортировать их в алфавитном порядке по фамилии
 */
 
 use hr;
 SELECT
 *
 FROM employees
 WHERE first_name like 'D%'
 ORDER BY last_name;

 
 
  