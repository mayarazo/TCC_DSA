

alter view dbo.v_seguros
as
select	
		tr.nm_ramo, 
		tr.nr_ramo_varchar,
		nr_ramo_completo =  tr.nr_ramo_varchar  + ' - '+ tr.nm_ramo,
		dt_base = convert(varchar,t.dt_base_int) + '01', 
		ts.nm_seguradora, 
		t.dt_base_int,
		t.vl_premio_retido,
		t.vl_sinistro_retido
from t_seguros t
	join t_ramo tr
		on t.nr_ramo_int = tr.nr_ramo_int
	join t_seguradora ts
		on t.cod_seguradora_int = ts.cod_seguradora_int
	where t.nr_ramo_int > 100
	
	
	go
