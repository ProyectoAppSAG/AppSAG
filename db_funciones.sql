

create or replace function consulta_ciclo(ciclo_cod character varying default null,ciclo_fec date default null)
RETURNS SETOF tb_ciclo AS
$BODY$
declare
tabla tb_ciclo%rowtype;
begin
if ciclo_cod is not null then
	for tabla in select * from tb_ciclo where tb_ciclo_cod=ciclo_cod loop
	return next tabla;
	end loop;
else
	for tabla in select * from tb_ciclo where tb_ciclo_fec_ini<=ciclo_fec and tb_ciclo_fec_fin>=ciclo_fec loop
	return next tabla;
	end loop;
end if;
return;
end
$BODY$
LANGUAGE 'plpgsql'



create or replace function logIn(usuario_nic character varying,usuario_pas character varying)
RETURNS SETOF tb_usuario AS
$BODY$
declare
tabla tb_usuario%rowtype;
begin
for tabla in select * from tb_usuario where tb_usuario_nic=nick and tb_usuario_pas=usuario_pas loop
return next tabla;
end loop;
return;
end
$BODY$
LANGUAGE 'plpgsql'

create or replace function consulta_opcionmenu(opcionmenu_id_ref integer default null,tipousuario_id integer default null)
RETURNS SETOF tb_opcionmenu AS
$BODY$
declare
tabla tb_opcionmenu%rowtype;
begin
if opcionmenu_id_ref is null then
	for tabla in select * from tb_opcionmenu op
	inner join tb_acceso ac on ac.tb_opcionmenu_id=op.tb_opcionmenu_id
	where tb_opcionmenu_id_ref is null and tb_acceso_est = '1' and ac.tb_tipousuario_id=tipousuario_id loop
	return next tabla;
	end loop;
else 
	for tabla in select * from tb_opcionmenu op
	inner join tb_acceso ac on ac.tb_opcionmenu_id=op.tb_opcionmenu_id
	where tb_opcionmenu_id_ref=opcionmenu_id_ref and tb_acceso_est = '1' and ac.tb_tipousuario_id=tipousuario_id  loop
	return next tabla;
	end loop;
end if;
return;
end
$BODY$
LANGUAGE 'plpgsql'


select * from consulta_opcionmenu(1,1)








