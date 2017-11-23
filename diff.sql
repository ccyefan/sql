-- B 不在 A 里面的记录
select a from
  (select A.tel a ,B.tel b
  from A
  left outer join B
  on A.tel = B.tel)
where b is null;

select tel from A
 where A.tel not in
    (select B.tel from B)



insert overwrite table tmk_aarrr_read_add_m partition(month_part=%s)
select a.statis_month, a.serv_num, a.prov_id, a.city_id, a.channel_code, a.channel_name, a.use_cnt
from tmk_aarrr_read_use_m a
where a.statis_month=%s and a.serv_num not in
   (select serv_num
from tmk_aarrr_read_all6_m
where statis_month=%s)


