

insert into dbo.t_seguradora(cod_seguradora_int,nm_seguradora )
select  
cod_seguradora_int, 
nm_seguradora = max(nm_seguradora)
from t_grupo_seguradora
group by cod_seguradora_int