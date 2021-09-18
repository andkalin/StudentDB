use studentsdb;
Select IFNULL(t1.cnt_t,0)+IFNULL(t2.cnt_c,0), IFNULL(t1.city,t2.city) from 
(Select city.city, count(*) cnt_t from teacher 
join city on city.id = teacher.city_id
group by city.city) t1
left join
(Select city.city, count(*) cnt_c from student 
join city on city.id = student.city_id
group by city.city) t2
on t1.city = t2.city
Union
Select IFNULL(t3.cnt_t,0)+ IFNULL(t4.cnt_c,0), IFNULL(t3.city,t4.city) from 
(Select city.city, count(*) cnt_t from teacher 
join city on city.id = teacher.city_id
group by city.city) t3
right join
(Select city.city, count(*) cnt_c from student 
join city on city.id = student.city_id
group by city.city) t4
on t3.city = t4.city
order by 1 desc limit 3;