create table tb_kh_info(
kh_id char(6) primary key,
kh_name char(10),
kh_add char(50),
kh_tel char(11)unique,
kh_bank char(50),
kh_account char(19)unique,
kh_email char(19) unique
)
go
create table tb_gys_info(
gys_id char(7) primary key,
gys_name char(50),
gys_add char(50),
gys_linkman_name char(10),
gys_linkman_tel char(11) unique,
gys_bank char(50),
gys_email char(19) unique,
gys_account char(19) unique)
/*ALTER TABle tb_gys_info
drop constraint UQ__tb_gys_i__38044D925812160E*/
go
create table tb_sp_info(
sp_id char(6)primary key,
sp_name char(50),
sp_add char(50),
sp_price int check(sp_price>0),
sp_date datetime,
sp_bzq int check(sp_bzq>0),
gys_id char(7)references tb_gys_info(gys_id)
)
go

go
create table tb_gy_info(
gys_id char(7) references tb_gys_info(gys_id),
sp_id char(6) references tb_sp_info(sp_id)
primary key(gys_id,sp_id)
)

alter table tb_kh_info
drop constraint UQ__tb_kh_in__9DF85B9645F365D3

alter table tb_xs_info add xs_volume int check(xs_volume>=0) not null

alter table tb_sp_info 
alter column sp_price float

alter table tb_sp_info
add  check(sp_price>0)

alter table tb_sp_info
add check(sp_bzq>0)

ALTER TABle tb_gys_info
drop constraint UQ__tb_gys_i__41743B1552593CB8
alter table tb_gys_info
add constraint UN_gys_tel unique(gys_linkman_tel)

alter table tb_gys_info
add constraint UN_gys_account unique(gys_account)

alter table tb_xs_info
add column 



create table tb_xs_info(
xs_id char(16) ,
kh_id char(6)references tb_kh_info(kh_id),
sp_id char(6)references tb_sp_info(sp_id)
xs_volume int check(xs_volume>=0),
primary key(xs_id, sp_id)
)
alter table tb_xs_info
alter column xs_id char(16)
