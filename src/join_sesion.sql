CREATE TABLE groups
(
    id         SERIAL PRIMARY KEY,
    group_name VARCHAR
);

CREATE TABLE courses
(
    id          SERIAL PRIMARY KEY,
    course_name VARCHAR,
    start_date  date,
    group_id    INT REFERENCES groups (id)
);

CREATE TABLE students
(
    id            SERIAL PRIMARY KEY,
    first_name    VARCHAR,
    last_name     VARCHAR,
    gender        VARCHAR,
    email         VARCHAR,
    date_of_birth date,
    group_id      INT REFERENCES groups (id)
);

CREATE TABLE mentors
(
    id             SERIAL PRIMARY KEY,
    first_name     VARCHAR,
    last_name      VARCHAR,
    gender         VARCHAR,
    email          VARCHAR,
    specialization VARCHAR,
    experience     INT,
    course_id      INT REFERENCES courses (id)
);

CREATE TABLE lesson
(
    id          SERIAL PRIMARY KEY,
    lesson_name VARCHAR,
    course_id   INT REFERENCES courses (id)
);

insert into groups(group_name)
values ('Java 9'),
       ('JS 9'),
       ('Java 12'),
       ('JS 12'),
       ('Java 13'),
       ('JS 13');

insert into courses (course_name, start_date, group_id)
values ('Java 9 core', '2023-01-03', 1),
       ('JS 9 core', '2023-01-03', 2),
       ('Java 12 core', '2023-10-03', 3),
       ('JS 12 core', '2023-10-03', 4),
       ('Java 13 core', '2024-01-08', 5),
       ('JS 13 core', '2024-01-08', 6),
       ('Technical English', '2024-01-08', 1),
       ('Python', '2024-01-08', 6);

insert into lesson(lesson_name, course_id)
values ('Loops', 1),
       ('HTML', 2),
       ('Methods', 3),
       ('CSS', 4),
       ('Collections', 5),
       ('React', 6);

insert into mentors (first_name, last_name, gender, email, specialization, experience, course_id)
values ('Datka', 'Mamatzhanova', 'Female', 'datka@gmail.com', 'java', 2, 1),
       ('Ulan', 'Kubanychbekov', 'Male', 'ulan@gmail.com', 'java', 3, 3),
       ('Aizat', 'Duisheeva', 'Female', 'aizat@gmail.com', 'java', 1, 5),
       ('Elizar', 'Aitbek uulu', 'Male', 'elizar@gmail.com', 'js', 1, 2),
       ('Aziat', 'Abdimalikov', 'Male', 'aziat@gmail.com', 'js', 1, 4),
       ('Alisher', 'Jumanov', 'Male', 'alisher@gmail.com', 'js', 1, 6);

insert into students (id, first_name, last_name, email, gender, date_of_birth, group_id)
values (1, 'Knox', 'Jacquot', 'kjacquot0@addthis.com', 'Male', '2004-04-12', 1);
insert into students (id, first_name, last_name, email, gender, date_of_birth, group_id)
values (2, 'Dewain', 'Hunt', 'dhunt1@trellian.com', 'Male', '2003-04-13', 2);
insert into students (id, first_name, last_name, email, gender, date_of_birth, group_id)
values (3, 'Jarrett', 'Iianon', 'jiianon2@chronoengine.com', 'Male', '2005-05-05', 3);
insert into students (id, first_name, last_name, email, gender, date_of_birth, group_id)
values (4, 'Merry', 'Niezen', 'mniezen3@canalblog.com', 'Male', '1999-04-03', 4);
insert into students (id, first_name, last_name, email, gender, date_of_birth, group_id)
values (5, 'Nollie', 'Pellingar', 'npellingar4@usgs.gov', 'Female', '2003-05-06', 5);
insert into students (id, first_name, last_name, email, gender, date_of_birth, group_id)
values (6, 'Eveleen', 'Moukes', 'emoukes5@amazon.co.uk', 'Female', '1996-03-03', 6);
insert into students (id, first_name, last_name, email, gender, date_of_birth, group_id)
values (7, 'Nollie', 'Becker', 'nbecker6@is.gd', 'Male', '1994-02-04', 1);
insert into students (id, first_name, last_name, email, gender, date_of_birth, group_id)
values (8, 'Nadine', 'Robilart', 'nrobilart7@walmart.com', 'Female', '2000-06-06', 2);
insert into students (id, first_name, last_name, email, gender, date_of_birth, group_id)
values (9, 'Dex', 'Prugel', 'dprugel8@arizona.edu', 'Male', '2001-03-04', 3);
insert into students (id, first_name, last_name, email, gender, date_of_birth, group_id)
values (10, 'Phyllis', 'Baroche', 'pbaroche9@state.gov', 'Female', '2004-04-04', 4);
insert into students (id, first_name, last_name, email, gender, date_of_birth, group_id)
values (11, 'Bernadette', 'Dulson', 'bdulsona@altervista.org', 'Female', '2004-04-04', 5);
insert into students (id, first_name, last_name, email, gender, date_of_birth, group_id)
values (12, 'Earlie', 'Pledge', 'epledgeb@jimdo.com', 'Male', '1993-12-04', 6);
insert into students (id, first_name, last_name, email, gender, date_of_birth, group_id)
values (13, 'Luigi', 'Standish', 'lstandishc@army.mil', 'Male', '1998-11-13', 1);
insert into students (id, first_name, last_name, email, gender, date_of_birth, group_id)
values (14, 'Cody', 'McLeoid', 'cmcleoidd@yahoo.com', 'Male', '2000-10-10', 2);
insert into students (id, first_name, last_name, email, gender, date_of_birth, group_id)
values (15, 'Heall', 'Dolligon', 'hdolligone@squidoo.com', 'Male', '2003-09-09', 3);
insert into students (id, first_name, last_name, email, gender, date_of_birth, group_id)
values (16, 'Isiahi', 'Somerscales', 'isomerscalesf@eepurl.com', 'Male', '1995-05-03', 4);
insert into students (id, first_name, last_name, email, gender, date_of_birth, group_id)
values (17, 'Matthieu', 'Spolton', 'mspoltong@so-net.ne.jp', 'Male', '1995-03-30', 5);
insert into students (id, first_name, last_name, email, gender, date_of_birth, group_id)
values (18, 'Esme', 'Brockway', 'ebrockwayh@hexun.com', 'Female', '1997-08-08', 6);
insert into students (id, first_name, last_name, email, gender, date_of_birth, group_id)
values (19, 'Erroll', 'Cutforth', 'ecutforthi@wisc.edu', 'Male', '2002-03-30', 1);
insert into students (id, first_name, last_name, email, gender, date_of_birth, group_id)
values (20, 'Gordon', 'Thieme', 'gthiemej@japanpost.jp', 'Male', '1994-04-04', 2);
insert into students (id, first_name, last_name, email, gender, date_of_birth, group_id)
values (21, 'Dom', 'Arnecke', 'darneckek@google.fr', 'Male', '2000-03-03', 3);
insert into students (id, first_name, last_name, email, gender, date_of_birth, group_id)
values (22, 'Raven', 'Yarrall', 'ryarralll@vimeo.com', 'Female', '2009-05-05', 4);
insert into students (id, first_name, last_name, email, gender, date_of_birth, group_id)
values (23, 'Emery', 'McSporon', 'emcsporonm@reverbnation.com', 'Male', '1990-12-20', 5);
insert into students (id, first_name, last_name, email, gender, date_of_birth, group_id)
values (24, 'Der', 'Caville', 'dcavillen@csmonitor.com', 'Male', '2003-03-20', 6);
insert into students (id, first_name, last_name, email, gender, date_of_birth, group_id)
values (25, 'Erich', 'Lorroway', 'elorrowayo@bizjournals.com', 'Male', '2000-08-07', 1);
insert into students (id, first_name, last_name, email, gender, date_of_birth, group_id)
values (26, 'Edan', 'Brayne', 'ebraynep@prweb.com', 'Male', '2008-12-23', 2);
insert into students (id, first_name, last_name, email, gender, date_of_birth, group_id)
values (27, 'Garald', 'Puddle', 'gpuddleq@taobao.com', 'Male', '1990-03-03', 3);
insert into students (id, first_name, last_name, email, gender, date_of_birth, group_id)
values (28, 'Orelee', 'Hoggan', 'ohogganr@e-recht24.de', 'Female', '1999-03-29', 4);
insert into students (id, first_name, last_name, email, gender, date_of_birth, group_id)
values (29, 'Dion', 'Kepp', 'dkepps@boston.com', 'Female', '2000-12-13', 5);
insert into students (id, first_name, last_name, email, gender, date_of_birth, group_id)
values (30, 'Winna', 'Ganders', 'wganderst@artisteer.com', 'Female', '2001-11-11', 6);

-- 1. Получите все записи таблицы groups;
SELECT *from groups;
-- 2. Получите общее количество записей таблицы groups
SELECT count(*) as croup_count from groups;
-- 3. Выведите группы их курсы
SELECT *, groups.group_name from groups right join courses on groups.id = courses.group_id;
-- 4. Выведите курсы групп у которых курс начался с 202011 по 202333
SELECT *from groups left join courses on groups.id = courses.group_id WHERE start_date between '1980-1-1' and '2023-3-3';
-- 5. Выведите имена, дату рождения студентов , которые родились с 198011 по 20041212, и названиегруппы
SELECT students.first_name as student_name, students.date_of_birth, groups.group_name from students LEFT JOIN groups on students.group_id = groups.id WHERE date_of_birth between '2000-1-1' and '2004-12-12';
-- 6. Вывести полное имя, возраст, почту студентов и название группы, где айди группы равен 3
SELECT concat(first_name, ' ', last_name) as full_name, age(current_date, students.date_of_birth),students.email, groups.group_name from students inner join groups on students.group_id = groups.id WHERE groups.id = 3;
-- 7. Вывести все курсы одной группы, где название группы 'Java-13'
SELECT *from courses JOIN groups on courses.group_id = groups.id WHERE group_name = 'Java 13';
-- 8. Вывести название всех групп и количество студентов в группе
SELECT group_name, count(students.id)from groups LEFT JOIN students on groups.id = students.group_id group by group_name;
-- 9. Вывести название всех групп и количество студентов в группе, если в группе больше 4 студентов
SELECT groups.group_name, count(students.id)from groups LEFT JOIN students on groups.id = students.group_id WHERE students.id > 4 group by groups.group_name;
-- 10.Отсортируйте имена студентов группы по убыванию, где айди группы равна 4 и выведите айдистудента, имя, пол и название группы
SELECT groups.group_name, students.id as student_id, students.first_name, students.gender from students inner join groups on students.group_id = groups.id WHERE groups.id = 4 order by first_name desc;


--   Tasks(Query) Course
-- 1. Вывести все курсы
SELECT * from courses;
-- 2. Вывести все уроки курса 'Technical English'
SELECT *from lesson INNER JOIN courses on lesson.course_id = courses.id WHERE courses.course_name = 'Technical English'; -- ондош керек;
-- 3. Вывести количество всех студентов курса id  4
SELECT course_name, count(students.id) as studnt_count from courses INNER JOIN students on students.id = courses.group_id WHERE courses.id = 4 group by course_name;
-- 4. Вывести имя, почту, специализацию ментора и название курса где курс айди равен 2
SELECT mentors.first_name, mentors.email, mentors.specialization, courses.course_name from mentors LEFT JOIN courses on mentors.course_id = courses.id WHERE courses.id = 2;
-- 5. Посчитaть сколько менторов в каждом курсе
SELECT count(mentors.id) as mentor_count from courses LEFT JOIN mentors on mentors.course_id = courses.id;
-- 6. Сгруппируйте и посчитайте менторов в каждом курсе и выведите только те курсы, где в курсебольше 2 менторов
-- 7. Вывести название, дату и полное имя ментора, все курсы которые начинаются с 202011 по 202333
SELECT concat(mentors.first_name, ' ', mentors.last_name) as full_name, * from courses left join mentors ON courses.id = mentors.course_id WHERE start_date between '2020-1-1' and '2023-3-3';
-- 8. Вывести имя, почту, возраст студентов курса 'Java 13 core'
SELECT students.first_name, students.email, age(current_date, students.date_of_birth) from students LEFT JOIN courses on students.id = courses.group_id WHERE course_name = 'Java 13 core';
-- 9. Вывести тот курс  где нет ментора
SELECT *from courses LEFT JOIN mentors on courses.id = mentors.course_id WHERE mentors.id IS NULL;
-- 10.Вывести тот курс где нет уроков
SELECT *from courses LEFT JOIN lesson on courses.id = lesson.course_id WHERE lesson.id IS NULL;
-- 11.Вывести тот курс  где нет студентов
-- SELECT * from courses left join students on courses.id =


-- Tasks(Query) Students
-- 1. Вывести общее количество студентов
SELECT count(students.id)from students;
-- 2. Вывести имя, почту и пол студента, айди группы которого равна 2
SELECT students.first_name, students.email, students.gender, students.group_id from students LEFT JOIN groups on students.group_id = groups.id
WHERE groups.id = 2 order by group_id;
-- 3. Вывести группу студента, айди которого равна 4
SELECT * from groups LEFT JOIN students on groups.id = students.group_id WHERE students.id = 4;
-- 4. Сгруппируйте студентов по gender и выведите общее количество gender
SELECT gender, count(*) as total from students group by gender;
-- 5. Найдите студента с айди 8 и обновите его данные
UPDATE students SET first_name='Rahman',gender = 'male',date_of_birth = '2003-4-14',email = 'rahman@gmail.com' WHERE id = 8;
SELECT * from students WHERE id = 8;
-- 6. Найдите самого старшего студента курса, айди курса которого равна 5
SELECT * from students LEFT JOIN courses on students.group_id = courses.group_id WHERE courses.id = 5 order by age(current_date, date_of_birth) desc;
-- 7. Добавьте unique constraint email в столбец таблицы students
ALTER TABLE students ADD CONSTRAINT unique_email UNIQUE (email);
SELECT * from students;
-- 8. Добавьте check constraint gender в столбец таблицы mentors
ALTER TABLE mentors ADD CONSTRAINT check_gender CHECK (gender IN ('male', 'female', 'other'));
-- 9. Добавьте check constraint gender в столбец таблицы students
ALTER TABLE students ADD CONSTRAINT check_gender CHECK ( gender IN ('male', 'female', 'other'));

-- Tasks(Query) Mentors
-- 1. Вывести средний возраст всех менторов
SELECT avg(age(current_date,students.date_of_birth)) as avereg from students;
-- 2. Вывести имя, почту и специализацию ментора группы 'Java-9'
SELECT mentors.first_name, mentors.email, mentors.specialization from mentors;--ондош кк.
-- 3. Вывести всех менторов, чей опыт превышает 1 год
SELECT * from mentors WHERE experience > 1;
-- 4. Вывести ментора у которого нет курса
SELECT *from mentors INNER JOIN courses on mentors.course_id= courses.id WHERE course_id IS NULL ;
-- 5. Вывести айди, имя ментора и его студентов
--     SELECT mentors.id,mentors.first_name, * from students LEFT JOIN mentors

-- 6. Посчитать сколько студентов у каждого ментора, и вывести полное имя
-- ментора и количество его студентов

-- 7. Вывести ментора у которого нет студентов
SELECT * from mentors LEFT JOIN students on mentors.course_id = students.group_id WHERE students.id IS NULL ;
-- 8. Вывести ментора у которого студентов больше чем 2
-- 9. Вывести курсы ментора с айди 5
SELECT * from courses LEFT JOIN mentors on courses.id = mentors.course_id WHERE mentors.id = 5;
-- 10.Вывести все уроки ментора, айди которого равен 5
SELECT * from lesson LEFT JOIN mentors on lesson.course_id = mentors.course_id WHERE mentors.id = 5;

-- Tasks(Query) Lessons
-- 1. Вывести все уроки
SELECT * from lesson;
-- 2.Получить все уроки студента, айди которого равен 2
SELECT * from lesson LEFT JOIN students on students.group_id= students.group_id WHERE students.id = 2;
-- 3.Посчитать уроки каждой группы и вывести название группы и количество
-- уроков, где количество уроков больше чем 2

-- 4.Отсортировать уроки студента по названию, где айди студента равна 7
SELECT * ;
-- 5.Получить все уроки курса, где название курса 'Python kids'
SELECT * from lesson join courses on lesson.course_id = courses.id WHERE course_name ='Python kids';
-- 6.Получить все уроки ментора, айди которого равен 5;
SELECT *,mentors.id, concat(first_name,'',last_name) full_name from mentors join lesson on mentors.course_id= lesson.course_id WHERE mentors.id = 5;
