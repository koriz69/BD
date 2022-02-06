select id, email, last_name from usr where id>6 order by id asc; 
select id, first_name, last_name from usr where length(first_name)>7;
select * from usr where usr.birht_date>='2005-01-01' order by id;
select first_name, last_name, usr.birht_date from usr order by usr.birht_date desc;
select * from usr where (usr.birht_date>='2003-01-01') and (usr.birht_date>='2008-12-31 00:00:00') order by id;