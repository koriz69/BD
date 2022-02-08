select id, email, last_name from usr where id>6 order by id asc; 
select id, first_name, last_name from usr where length(first_name)>7;
select * from usr where usr.birht_date>='2005-01-01' order by id;
select first_name, last_name, usr.birht_date from usr order by usr.birht_date desc;
select * from usr where (usr.birht_date>='2003-01-01') and (usr.birht_date>='2008-12-31 00:00:00') order by id; 

select m.first_name, m.middle_name, m.last_name, m.e_mail, p.name from university_member um join usr m on um.user_id=m.id join position p on um.position_id=p.id
select m.first_name, m.middle_name, m.last_name, m.e_mail, g.name from group_member gm join university_member um on gm.university_member_id=um.user_id join groups g on gm.group_id=g.id join usr m on um.user_id=m.id;
select m.first_name, m.middle_name, m.last_name, m.e_mail, d.name from university_member um join usr m on um.user_id=m.id join department d on um.department_id=d.id;

select u.first_name, u.middle_name, u.last_name, a.zip_code, a.city, a.street,
a.building, a.flat from usr u left join address a on u.id=a.user_id;


select m.first_name, m.middle_name, m.last_name, m.e_mail, p.name
from university_member um left join usr m on um.user_id=m.id
join position p on um.position_id=p.id;

select m.first_name, m.middle_name, m.last_name, m.e_mail, g.name
from group_member gm join university_member um on gm.university_member_id=um.user_id
join groups g on gm.group_id=g.id join usr m on um.user_id=m.id;

select m.first_name, m.middle_name, m.last_name, m.e_mail, d.name
from university_member um join usr m on um.user_id=m.id
join department d on um.department_id=d.id;