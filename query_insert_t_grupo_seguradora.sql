


select *
,dt_base_varchar = damesano
,dt_base_char = damesano
,dt_base_int = damesano
,cod_seguradora_varchar = coenti
,cod_seguradora_char = coenti
,cod_seguradora_int = coenti
,nm_seguradora = noenti
,cod_grupo_seguradora_varchar = cogrupo
,cod_grupo_seguradora_char = cogrupo
,cod_grupo_seguradora_int = cogrupo
,nm_grupo_seguradora = nogrupo
from dbo.t_ses_grupos_economicos2



insert into t_grupo_seguradora(
dt_base_varchar,
dt_base_char,
dt_base_int,
cod_seguradora_varchar,
cod_seguradora_char,
cod_seguradora_int,
nm_seguradora,
cod_grupo_seguradora_varchar,
cod_grupo_seguradora_char,
cod_grupo_seguradora_int,
nm_grupo_seguradora
)
select
dt_base_varchar = damesano
,dt_base_char = damesano
,dt_base_int = damesano
,cod_seguradora_varchar = coenti
,cod_seguradora_char = coenti
,cod_seguradora_int = coenti
,nm_seguradora = noenti
,cod_grupo_seguradora_varchar = cogrupo
,cod_grupo_seguradora_char = cogrupo
,cod_grupo_seguradora_int = cogrupo
,nm_grupo_seguradora = nogrupo
from dbo.t_ses_grupos_economicos2

