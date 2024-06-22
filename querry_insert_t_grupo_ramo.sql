
select * from [t_ses_gruposramos]

select 
max(len(granome))
from [t_ses_gruposramos]



select *
,nm_grupo = substring(granome, 6,45)
,nr_ramo_char = gracodigo
,nr_ramo_varchar = gracodigo
,nr_ramo_int = convert(int,gracodigo)
,nm_ramo_nr = granome

from [dbo].[t_ses_gruposramos]




insert into t_grupo_ramo(
nm_grupo,
nr_grupo_char,
nr_grupo_varchar,
nr_grupo_int,
nm_grupo_nr
)
select 
nm_grupo = substring(granome, 6,45)
,nr_grupo_char = gracodigo
,nr_grupo_varchar = gracodigo
,nr_grupo_int = convert(int,gracodigo)
,nm_grupo_nr = granome
from [t_ses_gruposramos]


