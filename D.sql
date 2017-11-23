prompt PL/SQL Developer import file
prompt Created on 2017年11月24日 by Administrator
set feedback off
set define off
prompt Creating D...
create table D
(
  prov VARCHAR2(10),
  city VARCHAR2(10),
  tel  VARCHAR2(10),
  pcnt NUMBER
)
tablespace SYSTEM
  pctfree 10
  pctused 40
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );

prompt Disabling triggers for D...
alter table D disable all triggers;
prompt Loading D...
insert into D (prov, city, tel, pcnt)
values ('p1', 'c1', '136', 2);
insert into D (prov, city, tel, pcnt)
values ('p1', 'c1', '137', 4);
insert into D (prov, city, tel, pcnt)
values ('p1', 'c2', '138', 3);
insert into D (prov, city, tel, pcnt)
values ('p1', 'c2', '139', 6);
insert into D (prov, city, tel, pcnt)
values ('p2', 'c1', '140', 7);
insert into D (prov, city, tel, pcnt)
values ('p2', 'c1', '141', 8);
insert into D (prov, city, tel, pcnt)
values ('p2', 'c2', '142', 9);
insert into D (prov, city, tel, pcnt)
values ('p2', 'c2', '143', 5);
insert into D (prov, city, tel, pcnt)
values ('p1', 'c1', '145', 22);
commit;
prompt 9 records loaded
prompt Enabling triggers for D...
alter table D enable all triggers;
set feedback on
set define on
prompt Done.
