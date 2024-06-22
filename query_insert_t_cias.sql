

insert into dbo.t_cias
(
cod_seguradora_varchar,
cod_seguradora_char,
cod_seguradora_int,
nm_seguradora
)

select distinct
cod_seguradora_varchar	= Coenti,
cod_seguradora_char		= Coenti,
cod_seguradora_int		= Coenti,
nm_seguradora			= ltrim(rtrim(Noenti))
from t_ses_cias

