-- B ���� A ����ļ�¼
select a from
  (select A.tel a ,B.tel b
  from A
  left outer join B
  on A.tel = B.tel)
where b is null;

select tel from A  
 where A.tel not in 
    (select B.tel from B)
