use studentsdb;
Select s.* from subject s 
where not exists(select subject_id from progress p where p.subject_id=s.id)
and exists (select subject_id from timetable t where t.subject_id=s.id)