use learn;
/*1 уровень сложности: Материалы по прошедшему занятию в репозитории https://github.com/IuriiAV/sqllessons , в каталоге lesson_three
1) Создайте таблицу staff (
id целое число, 
name, строка
surname, строка
age, целое число
position - строка */

CREATE TABLE staff(
id integer,
name varchar(64),
surname varchar(64),
age integer,
position varchar(64)
);
SELECT * FROM staff;

/*
1,'Alex','Alexeev',24,'worker'
2,'Oleg','Olegov',36,'administration'
……..
и так далее.
В качестве возможных значений в поле position используйте worker,administration, security
*/
INSERT INTO staff (id, name, surname, age, position) VALUES(1,'Alex','Aleksejev',24,'worker' ),
												(2,'Oleg','Kuranin',36,'administration'), 
                                                (3,'Martyna','Jansone',57,'worker'), 
                                                (4,'Ingrida','Rone',43,'administration'), 
                                                (5,'Mike','Boschetto',30,'security'), 
                                                (6,'Leon','Dick',51,'worker'), 
                                                (7,'Andrea','Mikelson',24,'worker'), 
                                                (8,'Stefan','Berg',28,'security'), 
                                                (9,'Alice','Vanova',32,'worker'), 
                                                (10,'Viktor','Novikov',60,'worker');
												
SELECT * FROM staff;
/*3) Добавьте в уже готовую и заполненную таблицу поле salary - целое число.*/

ALTER TABLE staff
ADD COLUMN salary integer; 
SELECT * FROM staff;
/*
4) Проставьте значение поля salary следующим образом :
если сотрудник категории worker - 1000
если сотрудник категории administration - 5000
если сотрудник категории security - 2000
*/
set sql_safe_updates=0;

UPDATE staff
SET salary=1000
WHERE position = 'worker';
UPDATE staff
SET salary=5000
WHERE position = 'administration';
UPDATE staff
SET salary=2000
WHERE position = 'security';
SELECT * FROM staff;

/*
5) Увеличьте всем сотрудникам зарплату в два раза.
*/
UPDATE staff
SET salary= salary*2;
SELECT * FROM staff;
/*
6) Удалите из таблицы сотрудников, чей возраст больше чем 45.
*/
DELETE FROM staff
WHERE age > 45;
/*
7) Создайте три представления : первое - хранит только сотрудников типа worker, второй - security,
третье administration
*/
CREATE VIEW v_new_staff_v1 AS
SELECT * 
FROM staff
WHERE position = 'worker';

SELECT * FROM v_new_staff_v1;

CREATE VIEW v_new_staff_v2 AS
SELECT * 
FROM staff
WHERE position = 'security';

SELECT * FROM v_new_staff_v2;

CREATE VIEW v_new_staff_v3 AS
SELECT * 
FROM staff
WHERE position = 'administration';

SELECT * FROM v_new_staff_v3;
/*
8) Создайте новую таблицу на основе выборки из таблицы staff , которая будет хранить только name,surname,position
сотрудников , которые относятся к administration
*/
SELECT * FROM staff;

CREATE TABLE new_staff
SELECT name,surname,position
FROM staff
WHERE position = 'administration';

SELECT * FROM new_staff;
/*
9) Удалите колонку position из новой таблицы.
 */
ALTER TABLE new_staff
DROP COLUMN position;

SELECT * FROM new_staff;


 