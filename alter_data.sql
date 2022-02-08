alter table usr rename email to e_mail;
alter table usr alter e_mail set not null;
alter table usr add constraint e_mail_unique unique(e_mail);
alter table usr add column birht_date timestamp;
update usr set birht_date='2002-02-21' where id<=10;
update usr set birht_date='2003-04-01' where id>10;
select * from usr; 
insert into role (name) values
('administrator'),
('editor'),
('user');
alter table usr add column role_name varchar(20);
update usr set role_name='administrator' where id=1;
update usr set role_name='administrator' where id=2;
update usr set role_name='editor' where id=3;
update usr set role_name='editor' where id=4;
update usr set role_name='editor' where id=5;
update usr set role_name='editor' where id=6;
update usr set role_name='editor' where id=7;
update usr set role_name='editor' where id=8;
update usr set role_name='editor' where id=9;
update usr set role_name='user' where id>=10;
alter table usr add column login varchar(64); 
alter table usr add column password varchar(64); 
alter table usr add constraint FK_USR_ROLE foreign key(role_name) references role;
create table role_permission(
	role_name varchar(20),
	permission_id SMALLSERIAL);
create table permission(
	id SMALLSERIAL not null,
	primary key (id),
	name VARCHAR(30) not null);
alter table role_permission add constraint FK_USR_ROLE foreign key (permission_id) references permission;
alter table role_permission add constraint FK_USR_ROLE2 foreign key (role_name) references role;
insert into permission (name) values
('create'),
('edit'),
('view'),
('delete');
insert into role_permission (role_name, permission_id) values
('administrator', '1'),
('administrator', '2'),
('administrator', '3'),
('administrator', '4'),
('editor', '2'),
('editor', '2'),
('user', '3');

alter table role_permission add constraint FK_USR_ROLE foreign key (permission_id) references permission;
alter table role_permission add constraint FK_USR_ROLE2 foreign key (role_name) references role;

alter table group_member add constraint FK01 foreign key (university_member_id) references
university_member;
alter table group_member add constraint FK02 foreign key (group_id) references
groups;
alter table university_member add constraint FK03 foreign key (user_id) references
usr;
alter table university_member add constraint FK04 foreign key (department_id) references
department;
alter table university_member add constraint FK05 foreign key (positon_id) references
position;
update university_member set position_id=1 where id=1;
update university_member set position_id=2 where id>1;
update university_member set position_id=3 where id>19;
update group_member set group_id=1 where id>19;
update group_member set group_id=2 where id>24;
update group_member set group_id=3 where id>29;
update group_member set group_id=4 where id>34;
update group_member set group_id=5 where id>39;