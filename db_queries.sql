insert into student (name, address, date_of_birth) 
values 
('Ron', '125 street NW', '1997-11-17'),
('George', '125 street NW', '1996-06-24'),
('Don', '125 street NW', '1998-09-13'),
('Braun', '125 street NW', '1995-12-12');

insert into course (name, start_time, end_time)
values 
('Biology', '13:00:00', '14:00:00'),
('Math', '09:00:00', '10:00:00'),
('Language Arts', '11:00:00', '12:00:00'),
('Chemistry', '14:00:00', '15:00:00'),
('Social Studies', '15:00:00', '16:00:00');

insert into enrollment (student_id, course_id, grade_achieved)
values
(1,2,95),
(1,3,75),
(1,2,65),
(1,1,85),
(1,4,55),
(1,4,45),
(1,1,95),
(1,5,55),
(1,2,55),
(1,1,65),
(1,4,75),
(1,3,75),
(1,2,85),
(1,1,85),
(1,5,95);

select name, date_of_birth from student
order by date_of_birth desc
limit 1;

select student.name, course.name, grade_achieved
from student 
inner join enrollment 
on student.id = enrollment.student_id
inner join course 
on course.id = enrollment.course_id
where grade_achieved > 90;

select name, AVG(grade_achieved)
from student 
inner join enrollment
on student.id = enrollment.course_id
group by name
order by avg(grade_achieved) asc
limit 3;
