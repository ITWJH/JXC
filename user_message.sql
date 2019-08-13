use JXCManage

create table tb_users(
users_id char(10) primary key,
users_name char(9) not null,
users_password char(6) not null
)
ALTER TABLE tb_users
ALTER COLUMN users_password char(15)
go
Alter table tb_users
alter column users_name char(15)
 
alter table tb_users
add constraint name_un unique(users_name)

insert into tb_users
values('2019073001','20191001','w147258.')

insert into tb_users
values('2019073002','20191002','w147258.')
go
insert into tb_users
values('2019073003','20191003','w147258.')
insert into tb_users 
values('2019073004','941952055','w147258.')