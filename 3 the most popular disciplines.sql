use studentsdb;
Select s.subject_id, c.name, s.cnt from
(Select p.subject_id, count(*) cnt from progress p group by p.subject_id) s
Join subject c on c.id=s.subject_id
Order by cnt desc limit 3;
