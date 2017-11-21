-- B 不在 A 里面的记录 
select a from 
  (select A.tel a ,B.tel b
  from A
  left outer join B
  on A.tel = B.tel)
where b is null
