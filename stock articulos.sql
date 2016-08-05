---Stock

select acodigo,adescri,aunidad,stock=isnull(STSKDIS,0.00),
[Control de Stock]= case when AFSERIE='N' and AFLOTE='N' and AFSTOCK='N' then 'Servicio'
						when  AFSTOCK='S' then 'Libre'
						when AFSERIE='S'  then 'Stock x serie'
						when  AFLOTE='S'  then 'Stock x Lote'
						else ''end 
from MAEART left join stkart on acodigo=stcodigo and stalma='01' 
where AESTADO='V'
