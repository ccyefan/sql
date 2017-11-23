prompt PL/SQL Developer import file
prompt Created on 2017年11月24日 by Administrator
set feedback off
set define off
prompt Creating C...
create table C
(
  prov VARCHAR2(10),
  city VARCHAR2(10),
  tel  VARCHAR2(10),
  ucnt NUMBER
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

prompt Disabling triggers for C...
alter table C disable all triggers;
prompt Loading C...
insert into C (prov, city, tel, ucnt)
values ('p1', 'c1', '136', 4);
insert into C (prov, city, tel, ucnt)
values ('p1', 'c1', '137', 8);
insert into C (prov, city, tel, ucnt)
values ('p1', 'c2', '138', 6);
insert into C (prov, city, tel, ucnt)
values ('p1', 'c2', '139', 12);
insert into C (prov, city, tel, ucnt)
values ('p2', 'c1', '140', 14);
insert into C (prov, city, tel, ucnt)
values ('p2', 'c1', '141', 16);
insert into C (prov, city, tel, ucnt)
values ('p2', 'c2', '142', 18);
insert into C (prov, city, tel, ucnt)
values ('p2', 'c2', '143', 10);
insert into C (prov, city, tel, ucnt)
values ('p1', 'c1', '144', 33);
commit;
prompt 9 records loaded
prompt Enabling triggers for C...
alter table C enable all triggers;
set feedback on
set define on
prompt Done.
