alter table usr rename email to e_mail;
alter table usr alter e_mail set not null;
alter table usr add constraint e_mail_unique unique(e_mail);
alter table usr add column birht_date timestamp;
update usr set birht_date='2002-02-21' where id<=10;
update usr set birht_date='2003-04-01' where id>10;
select * from usr;