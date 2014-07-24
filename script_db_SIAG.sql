------------- SCRIPT DE LA BD de SAG---------------------
--eliminamos las tablas

drop table if exists tb_pago;
drop table if exists tb_resultadoexamen;
drop table if exists tb_historialalumno;
drop table if exists tb_asistencia;
drop table if exists tb_aulaturno;
drop table if exists tb_turno;
drop table if exists tb_nivel;
drop table if exists tb_matricula;
drop table if exists tb_observacion;
drop table if exists tb_simulacro;
drop table if exists tb_alumno;
drop table if exists tb_aula;
drop table if exists tb_escuela;
drop table if exists tb_grupo;
drop table if exists tb_ciclo;
drop table if exists tb_bitacora;
drop table if exists tb_acceso;
drop table if exists tb_opcionmenu;
drop table if exists tb_usuario;
drop table if exists tb_tipousuario;
drop table if exists tb_local;




CREATE TABLE tb_local
(
  tb_local_id serial NOT NULL,
  tb_local_nom character varying(50) NOT NULL, --nombre del local
  tb_local_tel character varying(10) , --telefono del local
  tb_local_dir character varying NOT NULL, --dirección del local
  tb_local_est character(1) NOT NULL DEFAULT 'H'::bpchar, --estado de funcionamiento del local
  CONSTRAINT pk_local_id PRIMARY KEY (tb_local_id)
);


CREATE TABLE tb_tipousuario
(
  tb_tipousuario_id serial NOT NULL ,
  tb_tipousuario_nom character varying(30) NOT NULL,
  tb_tipousuario_est character(1) NOT NULL DEFAULT 'H'::bpchar,
  CONSTRAINT pk_tipousuario_id PRIMARY KEY (tb_tipousuario_id)

);


CREATE TABLE tb_opcionmenu
(
  tb_opcionmenu_id serial NOT NULL ,
  tb_opcionmenu_nom character varying(50) NOT NULL, --nombre del menu para mostrar
  tb_opcionmenu_lin character varying(100) NOT NULL, --link o url a donde te direccionará el menú
  tb_opcionmenu_id_ref integer, --referencia al menú padre del menú si es que lo tuviera
  tb_opcionmenu_est character(1) NOT NULL DEFAULT 'H'::bpchar, --estado o viegencia del menú
  tb_opcionmenu_ico character varying(15) NULL,
  CONSTRAINT pk_opcionmenu_id PRIMARY KEY (tb_opcionmenu_id),
  CONSTRAINT fk_opcionmenu_opcionmenu FOREIGN KEY (tb_opcionmenu_id_ref)
	REFERENCES tb_opcionmenu(tb_opcionmenu_id) MATCH FULL
	ON UPDATE CASCADE ON DELETE SET NULL
);


CREATE TABLE tb_acceso
(
  tb_acceso_id serial NOT NULL,
  --tb_acceso_lect character(1) NOT NULL DEFAULT 'S'::bpchar,
  --tb_acceso_esc character(1),
  tb_acceso_est character(1) NOT NULL DEFAULT 'H'::bpchar, --estado del acceso
  tb_opcionmenu_id integer, --referencia a la opcion de menú a la que se tiene acceso
  tb_tipousuario_id integer, --referencia al tipousuario que le corresponde este acceso o permiso
  CONSTRAINT pk_acceso_id PRIMARY KEY (tb_acceso_id),
  CONSTRAINT tb_opcionmenu_fk FOREIGN KEY (tb_opcionmenu_id)
      REFERENCES tb_opcionmenu (tb_opcionmenu_id) MATCH FULL
      ON UPDATE CASCADE ON DELETE SET NULL,
  CONSTRAINT tb_tipousuario_fk FOREIGN KEY (tb_tipousuario_id)
      REFERENCES tb_tipousuario (tb_tipousuario_id) MATCH FULL
      ON UPDATE CASCADE ON DELETE SET NULL
);



CREATE TABLE tb_usuario
(
  tb_usuario_id serial NOT NULL ,
  tb_usuario_nic character varying(50) NOT NULL,
  tb_usuario_pas character varying(50) NOT NULL,
  tb_usuario_ult_acc timestamp without time zone,
  tb_usuario_est_cnx character(1), -- C-> conectado, D->desconectado
  tb_usuario_est character(1) NOT NULL DEFAULT 'H'::bpchar,
  tb_tipousuario_id integer,
  tb_local_id integer,
  CONSTRAINT pk_usuario_id PRIMARY KEY (tb_usuario_id),
  CONSTRAINT fk_usuario_tipousuario FOREIGN KEY (tb_tipousuario_id)
      REFERENCES tb_tipousuario (tb_tipousuario_id) MATCH FULL
      ON UPDATE CASCADE ON DELETE SET NULL,
  CONSTRAINT fk_usuario_local FOREIGN KEY (tb_local_id)
      REFERENCES tb_local (tb_local_id) MATCH FULL
      ON UPDATE CASCADE ON DELETE SET NULL
);

CREATE TABLE tb_bitacora
(
  tb_bitacora_id serial NOT NULL,
  tb_bitacora_acc character(1) NOT NULL, -- I->insert,U->update,D->delete
  tb_bitacora_fec timestamp without time zone NOT NULL,
  tb_bitacora_ip_ses character varying(100) NOT NULL,
  tb_bitacora_id_reg integer NOT NULL,
  tb_bitacora_tab character varying(50) NOT NULL,
  tb_bitacora_mod text NOT NULL,
  tb_usuario_id integer,
  CONSTRAINT pk_bitacora_id PRIMARY KEY (tb_bitacora_id),
  CONSTRAINT fk_bitacora_usuario FOREIGN KEY (tb_usuario_id)
      REFERENCES tb_usuario (tb_usuario_id) MATCH FULL
      ON UPDATE CASCADE ON DELETE SET NULL
);



CREATE TABLE tb_grupo
(
  tb_grupo_id serial NOT NULL, -- codigo grupo
  tb_grupo_nom character varying(50) NOT NULL, -- nombre del Grupo
  tb_grupo_abr character varying(3), --abreviatura del nombre del grupo
  CONSTRAINT pk_grupo_id PRIMARY KEY (tb_grupo_id)
);

CREATE TABLE tb_escuela
(
  tb_escuela_id serial NOT NULL, -- CODIGO ESCUELA
  tb_escuela_nom character varying(80) NOT NULL, -- nombre ESCUELA
  tb_grupo_id integer NOT NULL, -- referencia al grupo al que pertenece la escuela
  --tb_escuela_codes character varying(2),
  CONSTRAINT pk_escuela_id PRIMARY KEY (tb_escuela_id),
  CONSTRAINT fk_escuela_grupo FOREIGN KEY (tb_grupo_id)
      REFERENCES tb_grupo(tb_grupo_id) MATCH SIMPLE
      ON UPDATE NO ACTION ON DELETE NO ACTION
);

CREATE TABLE tb_aula
(
  tb_aula_id serial NOT NULL, -- ID DEL AULA
  tb_aula_nom character varying(20) NOT NULL, -- NOMBRE DEL AULA
  tb_aula_cap_alu integer NOT NULL, --capacidad máxima de alumnos en el aula
  tb_local_id integer NOT NULL, --referencia al local al que pertenece el aula
  CONSTRAINT pk_aula PRIMARY KEY (tb_aula_id),
  CONSTRAINT fk_aula_local FOREIGN KEY (tb_local_id)
      REFERENCES tb_local(tb_local_id) MATCH SIMPLE
      ON UPDATE NO ACTION ON DELETE NO ACTION
);

--esta es ka tabla ciclo, que representa el ciclo academico que se apertura
--normalmente cada 4 meses y a donde apuntaran las matriculas de dicho ciclo
CREATE TABLE tb_ciclo
(
  tb_ciclo_cod character varying(10) NOT NULL, -- nombre del ciclo de estudios sera unico y pk
  tb_ciclo_fec_ini date NOT NULL, -- Fecha inicio ciclo
  tb_ciclo_fec_fin date NOT NULL, -- Fecha finaliza ciclo
  tb_ciclo_pre_bas numeric(6,2) NOT NULL, -- Precio base que cuesta el ciclo
  CONSTRAINT pk_ciclo_cod PRIMARY KEY (tb_ciclo_cod)
);

CREATE TABLE tb_turno
(
  tb_turno_id serial NOT NULL, -- ID DEL TURNO
  tb_turno_nom character varying NOT NULL, -- nombre DEL TURNO PUEDE SER MAÑANA O TARDE, ETC
  tb_turno_hor_ini time NOT NULL, --hora de inicio del turno
  tb_turno_hor_fin time NOT NULL, --hora de fin del turno
  --tb_turno_abr character varying(3),
  CONSTRAINT pk_turno_id PRIMARY KEY (tb_turno_id)
);

create table tb_nivel
(
  tb_nivel_id serial NOT NULL,
  tb_nivel_nom character varying(30) NOT NULL, --nombre del nivel
  tb_nivel_pos integer NOT NULL, --posición del nivel que servira para saber cual es el orden de niveles,ejemplo: 1,2,3
  CONSTRAINT pk_tb_nivel_id PRIMARY KEY (tb_nivel_id)
);

create table tb_aulaturno
(
  tb_aulaturno_id serial NOT NULL, --
  tb_aula_id integer NOT NULL,
  tb_turno_id integer NOT NULL,
  tb_nivel_id integer NOT NULL,
  tb_grupo_id integer NOT NULL, 
  CONSTRAINT pk_aulaturno_id PRIMARY KEY (tb_aulaturno_id),
  CONSTRAINT fk_aulaturno_turno FOREIGN KEY (tb_turno_id)
      REFERENCES tb_turno(tb_turno_id) MATCH SIMPLE
      ON UPDATE NO ACTION ON DELETE NO ACTION,
  CONSTRAINT fk_aulaturno_aula FOREIGN KEY (tb_aula_id)
      REFERENCES tb_aula(tb_aula_id) MATCH SIMPLE
      ON UPDATE NO ACTION ON DELETE NO ACTION,
  CONSTRAINT fk_aulaturno_nivel FOREIGN KEY (tb_nivel_id)
      REFERENCES tb_nivel(tb_nivel_id) MATCH SIMPLE
      ON UPDATE NO ACTION ON DELETE NO ACTION,
  CONSTRAINT fk_aulaturno_grupo FOREIGN KEY (tb_grupo_id)
      REFERENCES tb_grupo(tb_grupo_id) MATCH SIMPLE
      ON UPDATE NO ACTION ON DELETE NO ACTION
);

CREATE TABLE tb_alumno
(
  tb_alumno_cod character(5) NOT NULL, --codigo del alumno de 5 digitos, el cual servirá para sus exámenes y será único y pk
  tb_alumno_sex character varying NOT NULL,-- SEXO DEL alumno
  tb_alumno_ape_pat character varying(50) NOT NULL, -- APELLIDO PATERNO DEL alumno
  tb_alumno_ape_mat character varying(50) NOT NULL, -- APELLIDO MATERNO DEL alumno
  tb_alumno_nom character varying(50) NOT NULL, -- NOMBRES DEL alumno
  tb_alumno_dir character varying(200) NOT NULL, -- DIRECCION DEL alumno
  tb_alumno_tel character varying(50), -- TELEFONO DEL alumno
  tb_alumno_rut_fot character varying(200) NOT NULL, -- ruta del carpeta donde se ubica la foto del alumno 
  tb_alumno_ema character varying(50), --email del alumno
  tb_alumno_dni character(8) NOT NULL, --DNI del alumno
  tb_alumno_est character varying(1), -- ESTADO DE MATRICULA DEL ALUMNO SI HA SIDO MATRICULADO O NO EN UN ciclo determinado
  tb_alumno_fec_reg date NOT NULL, --fecha de registro del alumno
  CONSTRAINT pk_alumno_cod PRIMARY KEY (tb_alumno_cod)
);

create table tb_observacion
(
   tb_observacion_id serial NOT NULL,
   tb_obervacion_des text NOT NULL, --descripción de la observación
   tb_alumno_cod character(5) NOT NULL, --referencia al alumno que pertenece la observación
   tb_ciclo_cod character varying(10) NOT NULL, --referencia al ciclo que pertenece la observación
   CONSTRAINT pk_observacion_id PRIMARY KEY (tb_observacion_id),
   CONSTRAINT fk_observacion_alumno FOREIGN KEY (tb_alumno_cod)
      REFERENCES tb_alumno(tb_alumno_cod) MATCH SIMPLE
      ON UPDATE NO ACTION ON DELETE NO ACTION,
   CONSTRAINT fk_observacion_ciclo FOREIGN KEY (tb_ciclo_cod)
      REFERENCES tb_ciclo(tb_ciclo_cod) MATCH SIMPLE
      ON UPDATE NO ACTION ON DELETE NO ACTION
);

create table tb_matricula
(
   tb_matricula_id serial NOT NULL, 
   tb_matricula_fec date NOT NULL, --fecha de la matricula
   tb_matricula_mon decimal(5,2) NOT NULL, --monto acordado a pagar por la matrícula
   tb_matricula_est_pag character(1) NOT NULL, --estado de pago de la matricula, C:cancelado, A:adeudado
   tb_ciclo_cod character varying(10) NOT NULL, --referencia al ciclo al que pertenece la matricula
   tb_alumno_cod character(5) NOT NULL, --referencia al alumno al que le pertenece la matrícula
   tb_local_id integer NOT NULL, -- referencia al local en donde el alumno se matricula
   CONSTRAINT pk_tb_matricula_id PRIMARY KEY (tb_matricula_id),
   CONSTRAINT fk_matricula_ciclo FOREIGN KEY (tb_ciclo_cod)
      REFERENCES tb_ciclo(tb_ciclo_cod) MATCH SIMPLE
      ON UPDATE NO ACTION ON DELETE NO ACTION,
   CONSTRAINT fk_matricula_alumno FOREIGN KEY (tb_alumno_cod)
      REFERENCES tb_alumno(tb_alumno_cod) MATCH SIMPLE
      ON UPDATE NO ACTION ON DELETE NO ACTION,
   CONSTRAINT fk_matricula_local FOREIGN KEY (tb_local_id)
      REFERENCES tb_local(tb_local_id) MATCH SIMPLE
      ON UPDATE NO ACTION ON DELETE NO ACTION
);

create table tb_pago(
   tb_pago_id serial NOT NULL,
   tb_pago_mon decimal(6,3) NOT NULL, --monto pagado o a pagar
   tb_pago_fec date NOT NULL, --fecha en la que se realizara el pago
   tb_pago_est character(1) NOT NULL, --estado del pago C:cancelado, N:no cancelado, R:refinanciado
   tb_pago_tip character(1) NOT NULL, --tipo de pago P:pago normal, A: pago adelantado, R:pago refinanciamiento
   tb_matricula_id integer NOT NULL, --referencia a la matricula a la que pertenece el pago
   CONSTRAINT pk_tb_pago_id PRIMARY KEY (tb_pago_id),
   CONSTRAINT fk_pago_matricula FOREIGN KEY (tb_matricula_id)
      REFERENCES tb_matricula(tb_matricula_id) MATCH SIMPLE
      ON UPDATE NO ACTION ON DELETE NO ACTION
);

create table tb_asistencia
(
   tb_asistencia_id serial NOT NULL, 
   tb_asistencia_fec date NOT NULL, --fecha de la asistencia
   tb_asistencia_hor time NOT NULL, --hora de llegada del alumno
   tb_matricula_id integer NOT NULL, --referencia a la matrícula del alumno a quien pertenece la asitencia
   CONSTRAINT pk_asistencia_id PRIMARY KEY (tb_asistencia_id),
   CONSTRAINT fk_asistencia_matricula FOREIGN KEY (tb_matricula_id)
      REFERENCES tb_matricula(tb_matricula_id) MATCH SIMPLE
      ON UPDATE NO ACTION ON DELETE NO ACTION
);

create table tb_simulacro
(
   tb_simulacro_id serial NOT NULL, 
   tb_simulacro_rut_sim character varying(200) NOT NULL, --ruta de la carpeta del simulacro o examen dado
   tb_simulacro_fec date NOT NULL, --fecha del simulacro rendido
   tb_ciclo_cod character varying(10) NOT NULL, --referencia al ciclo al que pertenece el simulacro
   CONSTRAINT pk_simulacro_id PRIMARY KEY(tb_simulacro_id),
   CONSTRAINT fk_simulacro_ciclo FOREIGN KEY (tb_ciclo_cod)
      REFERENCES tb_ciclo(tb_ciclo_cod) MATCH SIMPLE
      ON UPDATE NO ACTION ON DELETE NO ACTION
);


create table tb_historialalumno
(
   tb_historialalumno_id serial NOT NULL,
   tb_historialalumno_pun_sim decimal(6,3) NOT NULL, --puntaje obtenido en el simulacro por el alumno
   tb_historialalumno_est character(1) NOT NULL, --estado para saber si el alumno rindio o no el examen S:si rindió, N: no rindió
   tb_matricula_id integer NOT NULL, --referencia a la matricula del alumno al que pertenece el simulacro
   tb_simulacro_id integer NOT NULL,--referencia al simulacro que ha rendido el alumno
   tb_aulaturno_id integer NOT NULL,--referencia al aulaturno 
   CONSTRAINT pk_historialalumno_id PRIMARY KEY(tb_historialalumno_id),
   CONSTRAINT fk_historialalumno_matricula FOREIGN KEY (tb_matricula_id)
      REFERENCES tb_matricula(tb_matricula_id) MATCH SIMPLE
      ON UPDATE NO ACTION ON DELETE NO ACTION,
   CONSTRAINT fk_historialalumno_simulacro FOREIGN KEY (tb_simulacro_id)
      REFERENCES tb_simulacro(tb_simulacro_id) MATCH SIMPLE
      ON UPDATE NO ACTION ON DELETE NO ACTION,
   CONSTRAINT fk_historialalumno_aulaturno FOREIGN KEY (tb_aulaturno_id)
      REFERENCES tb_aulaturno(tb_aulaturno_id) MATCH SIMPLE
      ON UPDATE NO ACTION ON DELETE NO ACTION
);

create table tb_resultadoexamen(
   tb_resultadoexamen_id serial NOT NULL,
   tb_resultadoexamen_pun_min decimal(6,3) NOT NULL, --puntaje mínimo del examen de admision en la escuela
   tb_resultadoexamen_pun_max decimal(6,3) NOT NULL, --puntaje máximo del examen de admision en la escuela
   tb_escuela_id integer NOT NULL, --referencia a la escuela a la que pertenecen los puntajes
   tb_ciclo_cod character varying(10) NOT NULL,
   CONSTRAINT pk_resultadoexamen_id PRIMARY KEY(tb_resultadoexamen_id),
   CONSTRAINT fk_resultadoexamen_escuela FOREIGN KEY (tb_escuela_id)
      REFERENCES tb_escuela(tb_escuela_id) MATCH SIMPLE
      ON UPDATE NO ACTION ON DELETE NO ACTION,
   CONSTRAINT fk_resultadoexamen_ciclo FOREIGN KEY (tb_ciclo_cod)
	REFERENCES tb_ciclo (tb_ciclo_cod) MATCH SIMPLE
	ON DELETE NO ACTION ON UPDATE NO ACTION 
)

