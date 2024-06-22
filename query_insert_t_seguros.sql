
drop table #tmp


select 
dt_base_int = DAMESANO,
cod_seguradora_int = coenti,
nr_ramo_int = coramo,
vl_premio_direto = case when premio_direto like  '%E%' then replace(SUBSTRING(premio_direto, 0, CHARINDEX('E', premio_direto)),',','.')
						else replace(substring(premio_direto, 0, CHARINDEX(',', premio_direto)+3),',','.') end,
vl_premio_de_seguros = case when premio_de_seguros like  '%E%' then replace(SUBSTRING(premio_de_seguros, 0, CHARINDEX('E', premio_de_seguros)),',','.')
						else replace(substring(premio_de_seguros, 0, CHARINDEX(',', premio_de_seguros)+3),',','.') end,
vl_premio_retido = case when premio_retido like  '%E%' then replace(SUBSTRING(premio_retido, 0, CHARINDEX('E', premio_retido)),',','.')
						else replace(substring(premio_retido, 0, CHARINDEX(',', premio_retido)+3),',','.') end,
vl_premio_ganho = case when premio_ganho like  '%E%' then replace(SUBSTRING(premio_ganho, 0, CHARINDEX('E', premio_ganho)),',','.')
						else replace(substring(premio_ganho, 0, CHARINDEX(',', premio_ganho)+3),',','.') end,
vl_sinistro_direto = case when sinistro_direto like  '%E%' then replace(SUBSTRING(sinistro_direto, 0, CHARINDEX('E', sinistro_direto)),',','.')
						else replace(substring(sinistro_direto, 0, CHARINDEX(',', sinistro_direto)+3),',','.') end,
vl_sinistro_retido = case when sinistro_retido like  '%E%' then replace(SUBSTRING(sinistro_retido, 0, CHARINDEX('E', sinistro_retido)),',','.')
						else replace(substring(sinistro_retido, 0, CHARINDEX(',', sinistro_retido)+3),',','.') end,
vl_desp_com = case when desp_com like  '%E%' then replace(SUBSTRING(desp_com, 0, CHARINDEX('E', desp_com)),',','.')
						else replace(substring(desp_com, 0, CHARINDEX(',', desp_com)+3),',','.') end,
vl_premio_emitido2 = case when premio_emitido2 like  '%E%' then replace(SUBSTRING(premio_emitido2, 0, CHARINDEX('E', premio_emitido2)),',','.')
						else replace(substring(premio_emitido2, 0, CHARINDEX(',', premio_emitido2)+3),',','.') end,
vl_premio_emitido_cap = case when premio_emitido_cap like  '%E%' then replace(SUBSTRING(premio_emitido_cap, 0, CHARINDEX('E', premio_emitido_cap)),',','.')
						else replace(substring(premio_emitido_cap, 0, CHARINDEX(',', premio_emitido_cap)+3),',','.') end,
vl_despesa_resseguros = case when despesa_resseguros like  '%E%' then replace(SUBSTRING(despesa_resseguros, 0, CHARINDEX('E', despesa_resseguros)),',','.')
						else replace(substring(despesa_resseguros, 0, CHARINDEX(',', despesa_resseguros)+3),',','.') end,
vl_sinistro_ocorrido = case when sinistro_ocorrido like  '%E%' then replace(SUBSTRING(sinistro_ocorrido, 0, CHARINDEX('E', sinistro_ocorrido)),',','.')
						else replace(substring(sinistro_ocorrido, 0, CHARINDEX(',', sinistro_ocorrido)+3),',','.') end,
vl_receita_resseguro = case when receita_resseguro like  '%E%' then replace(SUBSTRING(receita_resseguro, 0, CHARINDEX('E', receita_resseguro)),',','.')
						else replace(substring(receita_resseguro, 0, CHARINDEX(',', receita_resseguro)+3),',','.') end,
vl_sinistros_ocorridos_cap = case when sinistros_ocorridos_cap like  '%E%' then replace(SUBSTRING(sinistros_ocorridos_cap, 0, CHARINDEX('E', sinistros_ocorridos_cap)),',','.')
						else replace(substring(sinistros_ocorridos_cap, 0, CHARINDEX(',', sinistros_ocorridos_cap)+3),',','.') end,
vl_recuperacao_sinistros_ocorridos_cap = case when recuperacao_sinistros_ocorridos_cap like  '%E%' then replace(SUBSTRING(recuperacao_sinistros_ocorridos_cap, 0, CHARINDEX('E', recuperacao_sinistros_ocorridos_cap)),',','.')
						else replace(substring(recuperacao_sinistros_ocorridos_cap, 0, CHARINDEX(',', recuperacao_sinistros_ocorridos_cap)+3),',','.') end,
vl_rvne = case when rvne like  '%E%' then replace(SUBSTRING(rvne, 0, CHARINDEX('E', rvne)),',','.')
						else replace(substring(rvne, 0, CHARINDEX(',', rvne)+3),',','.') end,
vl_conveniodpvat = case when conveniodpvat like  '%E%' then replace(SUBSTRING(conveniodpvat, 0, CHARINDEX('E', conveniodpvat)),',','.')
						else replace(substring(conveniodpvat, 0, CHARINDEX(',', conveniodpvat)+3),',','.') end,
vl_consorciosefundos = case when consorciosefundos like  '%E%' then replace(SUBSTRING(consorciosefundos, 0, CHARINDEX('E', consorciosefundos)),',','.')
						else replace(substring(consorciosefundos, 0, CHARINDEX(',', consorciosefundos)+3),',','.') end
into #tmp
from [t_ses_seguros]



insert into dbo.t_seguros(
dt_base_int,
cod_seguradora_int,
nr_ramo_int,
vl_premio_direto,
vl_premio_de_seguros,
vl_premio_retido,
vl_premio_ganho,
vl_sinistro_direto,
vl_sinistro_retido,
vl_desp_com,
vl_premio_emitido2,
vl_premio_emitido_cap,
vl_despesa_resseguros,
vl_sinistro_ocorrido,
vl_receita_resseguro,
vl_sinistros_ocorridos_cap,
vl_recuperacao_sinistros_ocorridos_cap,
vl_rvne,
vl_conveniodpvat,
vl_consorciosefundos
)
select 
dt_base_int = dt_base_int,
cod_seguradora_int = cod_seguradora_int,
nr_ramo_int = nr_ramo_int,
vl_premio_direto = convert(numeric(19,2),vl_premio_direto),
vl_premio_de_seguros = convert(numeric(19,2),vl_premio_de_seguros),
vl_premio_retido = convert(numeric(19,2),vl_premio_retido),
vl_premio_ganho = convert(numeric(19,2),vl_premio_ganho),
vl_sinistro_direto = convert(numeric(19,2),vl_sinistro_direto),
vl_sinistro_retido = case when vl_Sinistro_retido <> ''  then convert(numeric(19,2),vl_sinistro_retido) else null end,
vl_desp_com = convert(numeric(19,2),vl_desp_com),
vl_premio_emitido2 = convert(numeric(19,2),vl_premio_emitido2),
vl_premio_emitido_cap = convert(numeric(19,2),vl_premio_emitido_cap),
vl_despesa_resseguros = convert(numeric(19,2),vl_despesa_resseguros),
vl_sinistro_ocorrido = convert(numeric(19,2),vl_sinistro_ocorrido),
vl_receita_resseguro = convert(numeric(19,2),vl_receita_resseguro),
vl_sinistros_ocorridos_cap = convert(numeric(19,2),vl_sinistros_ocorridos_cap),
vl_recuperacao_sinistros_ocorridos_cap = convert(numeric(19,2),vl_recuperacao_sinistros_ocorridos_cap),
vl_rvne = convert(numeric(19,2),vl_rvne),
vl_conveniodpvat = convert(numeric(19,2),vl_conveniodpvat),
vl_consorciosefundos = convert(numeric(19,2),vl_consorciosefundos)
from #tmp

