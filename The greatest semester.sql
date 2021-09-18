use studentsdb;
Select s.semester_id, c.begining, c.ending, s.cnt from
(Select p.semester_id, avg(mark) cnt from progress p group by p.semester_id) s
Join semester c on c.id=s.semester_id
Order by cnt desc limit 1;