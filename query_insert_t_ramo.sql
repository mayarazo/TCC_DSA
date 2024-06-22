

--select 
--max(len(noramo))
--from [t_Ses_ramos]



select *
,nm_ramo = substring(noramo, 8,45)
,nr_ramo_char = coramo
,nr_ramo_varchar = coramo
,nr_ramo_int = convert(int,coramo)
,nm_ramo_nr = noramo

from [dbo].[t_Ses_ramos]




insert into t_ramo(
nm_ramo,
nr_ramo_char,
nr_ramo_varchar,
nr_ramo_int,
nm_ramo_nr
)
select 
nm_ramo = substring(noramo, 8,45)
,nr_ramo_char = coramo
,nr_ramo_varchar = coramo
,nr_ramo_int = convert(int,coramo)
,nm_ramo_nr = noramo
from [dbo].[t_Ses_ramos]




