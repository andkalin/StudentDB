use studentsdb;
Select s.student_id, c.firstname, c.lastname, s.cnt from
(Select p.student_id, avg(mark) cnt from progress p group by p.student_id) s
Join student c on c.id=s.student_id
Order by cnt desc limit 5;


