prompt PL/SQL Developer import file
prompt Created on 2017年11月24日 by Administrator
set feedback off
set define off
prompt Creating B...
create table B
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

prompt Disabling triggers for B...
alter table B disable all triggers;
prompt Loading B...
insert into B (tel)
values ('1');
insert into B (tel)
values ('2');
insert into B (tel)
values ('3');
insert into B (tel)
values ('6');
commit;
prompt 4 records loaded
prompt Enabling triggers for B...
alter table B enable all triggers;
set feedback on
set define on
prompt Done.
