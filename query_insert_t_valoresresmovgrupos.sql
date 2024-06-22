
drop table #tmp

select
IDENTITY( int ) AS id,
DAMESANO,
GRACODIGO,
COENTI,
cmpid,
valor,
valor_numeric = case when valor like  '%E%' then replace(SUBSTRING(valor, 0, CHARINDEX('E', valor)),',','.')

						else replace(substring(valor, 0, CHARINDEX(',', valor)+3),',','.') end
into #tmp
from dbo.t_ses_valoresresmovgrupos



insert into t_valoresresmovgrupos(
dt_base_varchar,
dt_base_char,
dt_base_int,
nr_grupo_varchar,
nr_grupo_char,
nr_grupo_int,
cod_seguradora_varchar,
cod_seguradora_char,
cod_seguradora_int,
cmpid,
valor_numeric,
valor_float,
valor_money,
valor_varchar
)
select 
dt_base_varchar = DAMESANO,
dt_base_char = DAMESANO,
dt_base_int = DAMESANO,
nr_grupo_varchar = GRACODIGO,
nr_grupo_char = GRACODIGO,
nr_grupo_int = GRACODIGO,
cod_seguradora_varchar = COENTI,
cod_seguradora_char = COENTI,
cod_seguradora_int = COENTI,
cmpid,
valor_numeric = convert(numeric(19,2),valor_numeric),
valor_float =  convert(float,valor_numeric),
valor_money = convert(money,valor_numeric),
valor_varchar = valor
from #tmp

