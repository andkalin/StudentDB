use studentsdb;
Select t.id, t.firstname, t.lastname, max(s.cnt) from
(Select l.teacher_id, p.subject_id, avg(mark) cnt from progress p 
join timetable l on l.subject_id = p.subject_id and l.semester_id=p.semester_id group by p.subject_id, l.teacher_id) s
Join teacher t on t.id=s.teacher_id
Group by t.id, t.firstname, t.lastname
order by 4 desc limit 1