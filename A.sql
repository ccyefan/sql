prompt PL/SQL Developer import file
prompt Created on 2017年11月24日 by Administrator
set feedback off
set define off
prompt Creating A...
create table A
(
  tel VARCHAR2(10)
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

prompt Disabling triggers for A...
alter table A disable all triggers;
prompt Loading A...
insert into A (tel)
values ('1');
insert into A (tel)
values ('2');
insert into A (tel)
values ('3');
insert into A (tel)
values ('5');
insert into A (tel)
values ('4');
commit;
prompt 5 records loaded
prompt Enabling triggers for A...
alter table A enable all triggers;
set feedback on
set define on
prompt Done.
