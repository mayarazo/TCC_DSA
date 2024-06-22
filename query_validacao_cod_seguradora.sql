
--5.854.704
--select count(*) from t_valoresresmovgrupos

drop table #t

select
 cod_seguradora_int = convert(varchar, cod_seguradora_int), nm_seguradora= max( nm_seguradora)
into #t
from t_grupo_seguradora
group by cod_seguradora_int

select
tgs.nm_seguradora,
tv.* from t_valoresresmovgrupos tv
	join #t tgs
		on tv.cod_seguradora_int = tgs.cod_seguradora_int
