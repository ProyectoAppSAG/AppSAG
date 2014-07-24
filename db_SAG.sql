-- Database generated with pgModeler (PostgreSQL Database Modeler).
-- PostgreSQL version: 9.2
-- Project Site: pgmodeler.com.br
-- Model Author: ---

SET check_function_bodies = false;
-- ddl-end --

-- object: "SAG_usu_alumno" | type: ROLE --
CREATE ROLE "SAG_usu_alumno" WITH 
	INHERIT
	LOGIN
	ENCRYPTED PASSWORD 'md581773759d752b438ad031080a436f941';
-- ddl-end --

-- object: usuario | type: ROLE --
CREATE ROLE usuario WITH 
	SUPERUSER
	UNENCRYPTED PASSWORD 'md541f55d102ea5687e95fb361019a12da4'
	VALID UNTIL '1969-12-31 00:00:00';
-- ddl-end --


-- Database creation must be done outside an multicommand file.
-- These commands were put in this file only for convenience.
-- -- object: "db_SAG" | type: DATABASE --
-- CREATE DATABASE "db_SAG"
-- 	ENCODING = 'UTF8'
-- 	LC_COLLATE = 'Spanish_Peru.UTF8'
-- 	LC_CTYPE = 'Spanish_Peru.UTF8'
-- 	TABLESPACE = pg_default
-- 	OWNER = postgres
-- ;
-- -- ddl-end --
-- 

-- object: public.tb_local_tb_local_id_seq | type: SEQUENCE --
CREATE SEQUENCE public.tb_local_tb_local_id_seq
	INCREMENT BY 1
	MINVALUE 1
	MAXVALUE 9223372036854775807
	START WITH 1
	CACHE 1
	NO CYCLE
	OWNED BY NONE;
ALTER SEQUENCE public.tb_local_tb_local_id_seq OWNER TO postgres;
-- ddl-end --

-- object: public.tb_local | type: TABLE --
CREATE TABLE public.tb_local(
	tb_local_id integer NOT NULL DEFAULT nextval('tb_local_tb_local_id_seq'::regclass),
	tb_local_nom character varying(50) NOT NULL,
	tb_local_tel character varying(10),
	tb_local_dir character varying NOT NULL,
	tb_local_est character NOT NULL DEFAULT 'H'::bpchar,
	CONSTRAINT pk_local_id PRIMARY KEY (tb_local_id)

);
-- ddl-end --
ALTER TABLE public.tb_local OWNER TO postgres;
-- ddl-end --

-- object: public.tb_tipousuario_tb_tipousuario_id_seq | type: SEQUENCE --
CREATE SEQUENCE public.tb_tipousuario_tb_tipousuario_id_seq
	INCREMENT BY 1
	MINVALUE 1
	MAXVALUE 9223372036854775807
	START WITH 1
	CACHE 1
	NO CYCLE
	OWNED BY NONE;
ALTER SEQUENCE public.tb_tipousuario_tb_tipousuario_id_seq OWNER TO postgres;
-- ddl-end --

-- object: public.tb_tipousuario | type: TABLE --
CREATE TABLE public.tb_tipousuario(
	tb_tipousuario_id integer NOT NULL DEFAULT nextval('tb_tipousuario_tb_tipousuario_id_seq'::regclass),
	tb_tipousuario_nom character varying(30) NOT NULL,
	tb_tipousuario_est character NOT NULL DEFAULT 'H'::bpchar,
	CONSTRAINT pk_tipousuario_id PRIMARY KEY (tb_tipousuario_id)

);
-- ddl-end --
ALTER TABLE public.tb_tipousuario OWNER TO postgres;
-- ddl-end --

-- object: public.tb_opcionmenu_tb_opcionmenu_id_seq | type: SEQUENCE --
CREATE SEQUENCE public.tb_opcionmenu_tb_opcionmenu_id_seq
	INCREMENT BY 1
	MINVALUE 1
	MAXVALUE 9223372036854775807
	START WITH 1
	CACHE 1
	NO CYCLE
	OWNED BY NONE;
ALTER SEQUENCE public.tb_opcionmenu_tb_opcionmenu_id_seq OWNER TO postgres;
-- ddl-end --

-- object: public.tb_opcionmenu | type: TABLE --
CREATE TABLE public.tb_opcionmenu(
	tb_opcionmenu_id integer NOT NULL DEFAULT nextval('tb_opcionmenu_tb_opcionmenu_id_seq'::regclass),
	tb_opcionmenu_nom character varying(50) NOT NULL,
	tb_opcionmenu_lin character varying(100) NOT NULL,
	tb_opcionmenu_id_ref integer,
	tb_opcionmenu_est character NOT NULL DEFAULT 'H'::bpchar,
	CONSTRAINT pk_opcionmenu_id PRIMARY KEY (tb_opcionmenu_id)

);
-- ddl-end --
ALTER TABLE public.tb_opcionmenu OWNER TO postgres;
-- ddl-end --

-- object: public.tb_acceso_tb_acceso_id_seq | type: SEQUENCE --
CREATE SEQUENCE public.tb_acceso_tb_acceso_id_seq
	INCREMENT BY 1
	MINVALUE 1
	MAXVALUE 9223372036854775807
	START WITH 1
	CACHE 1
	NO CYCLE
	OWNED BY NONE;
ALTER SEQUENCE public.tb_acceso_tb_acceso_id_seq OWNER TO postgres;
-- ddl-end --

-- object: public.tb_acceso | type: TABLE --
CREATE TABLE public.tb_acceso(
	tb_acceso_id integer NOT NULL DEFAULT nextval('tb_acceso_tb_acceso_id_seq'::regclass),
	tb_acceso_est character NOT NULL DEFAULT 'H'::bpchar,
	tb_opcionmenu_id integer,
	tb_tipousuario_id integer,
	CONSTRAINT pk_acceso_id PRIMARY KEY (tb_acceso_id)

);
-- ddl-end --
ALTER TABLE public.tb_acceso OWNER TO postgres;
-- ddl-end --

-- object: public.tb_usuario_tb_usuario_id_seq | type: SEQUENCE --
CREATE SEQUENCE public.tb_usuario_tb_usuario_id_seq
	INCREMENT BY 1
	MINVALUE 1
	MAXVALUE 9223372036854775807
	START WITH 1
	CACHE 1
	NO CYCLE
	OWNED BY NONE;
ALTER SEQUENCE public.tb_usuario_tb_usuario_id_seq OWNER TO postgres;
-- ddl-end --

-- object: public.tb_usuario | type: TABLE --
CREATE TABLE public.tb_usuario(
	tb_usuario_id integer NOT NULL DEFAULT nextval('tb_usuario_tb_usuario_id_seq'::regclass),
	tb_usuario_nic character varying(50) NOT NULL,
	tb_usuario_pas character varying(50) NOT NULL,
	tb_usuario_ult_acc timestamp,
	tb_usuario_est_cnx character,
	tb_usuario_est character NOT NULL DEFAULT 'H'::bpchar,
	tb_tipousuario_id integer,
	tb_local_id integer,
	CONSTRAINT pk_usuario_id PRIMARY KEY (tb_usuario_id)

);
-- ddl-end --
ALTER TABLE public.tb_usuario OWNER TO postgres;
-- ddl-end --

-- object: public.tb_bitacora_tb_bitacora_id_seq | type: SEQUENCE --
CREATE SEQUENCE public.tb_bitacora_tb_bitacora_id_seq
	INCREMENT BY 1
	MINVALUE 1
	MAXVALUE 9223372036854775807
	START WITH 1
	CACHE 1
	NO CYCLE
	OWNED BY NONE;
ALTER SEQUENCE public.tb_bitacora_tb_bitacora_id_seq OWNER TO postgres;
-- ddl-end --

-- object: public.tb_bitacora | type: TABLE --
CREATE TABLE public.tb_bitacora(
	tb_bitacora_id integer NOT NULL DEFAULT nextval('tb_bitacora_tb_bitacora_id_seq'::regclass),
	tb_bitacora_acc character NOT NULL,
	tb_bitacora_fec timestamp NOT NULL,
	tb_bitacora_ip_ses character varying(100) NOT NULL,
	tb_bitacora_id_reg integer NOT NULL,
	tb_bitacora_tab character varying(50) NOT NULL,
	tb_bitacora_mod text NOT NULL,
	tb_usuario_id integer,
	CONSTRAINT pk_bitacora_id PRIMARY KEY (tb_bitacora_id)

);
-- ddl-end --
ALTER TABLE public.tb_bitacora OWNER TO postgres;
-- ddl-end --

-- object: public.tb_grupo_tb_grupo_id_seq | type: SEQUENCE --
CREATE SEQUENCE public.tb_grupo_tb_grupo_id_seq
	INCREMENT BY 1
	MINVALUE 1
	MAXVALUE 9223372036854775807
	START WITH 1
	CACHE 1
	NO CYCLE
	OWNED BY NONE;
ALTER SEQUENCE public.tb_grupo_tb_grupo_id_seq OWNER TO postgres;
-- ddl-end --

-- object: public.tb_grupo | type: TABLE --
CREATE TABLE public.tb_grupo(
	tb_grupo_id integer NOT NULL DEFAULT nextval('tb_grupo_tb_grupo_id_seq'::regclass),
	tb_grupo_nom character varying(50) NOT NULL,
	tb_grupo_abr character varying(3),
	CONSTRAINT pk_grupo_id PRIMARY KEY (tb_grupo_id)

);
-- ddl-end --
ALTER TABLE public.tb_grupo OWNER TO postgres;
-- ddl-end --

-- object: public.tb_escuela_tb_escuela_id_seq | type: SEQUENCE --
CREATE SEQUENCE public.tb_escuela_tb_escuela_id_seq
	INCREMENT BY 1
	MINVALUE 1
	MAXVALUE 9223372036854775807
	START WITH 1
	CACHE 1
	NO CYCLE
	OWNED BY NONE;
ALTER SEQUENCE public.tb_escuela_tb_escuela_id_seq OWNER TO postgres;
-- ddl-end --

-- object: public.tb_escuela | type: TABLE --
CREATE TABLE public.tb_escuela(
	tb_escuela_id integer NOT NULL DEFAULT nextval('tb_escuela_tb_escuela_id_seq'::regclass),
	tb_escuela_nom character varying(80) NOT NULL,
	tb_grupo_id integer NOT NULL,
	CONSTRAINT pk_escuela_id PRIMARY KEY (tb_escuela_id)

);
-- ddl-end --
ALTER TABLE public.tb_escuela OWNER TO postgres;
-- ddl-end --

-- object: public.tb_aula_tb_aula_id_seq | type: SEQUENCE --
CREATE SEQUENCE public.tb_aula_tb_aula_id_seq
	INCREMENT BY 1
	MINVALUE 1
	MAXVALUE 9223372036854775807
	START WITH 1
	CACHE 1
	NO CYCLE
	OWNED BY NONE;
ALTER SEQUENCE public.tb_aula_tb_aula_id_seq OWNER TO postgres;
-- ddl-end --

-- object: public.tb_aula | type: TABLE --
CREATE TABLE public.tb_aula(
	tb_aula_id integer NOT NULL DEFAULT nextval('tb_aula_tb_aula_id_seq'::regclass),
	tb_aula_nom character varying(20) NOT NULL,
	tb_aula_cap_alu integer NOT NULL,
	tb_local_id integer NOT NULL,
	CONSTRAINT pk_aula PRIMARY KEY (tb_aula_id)

);
-- ddl-end --
ALTER TABLE public.tb_aula OWNER TO postgres;
-- ddl-end --

-- object: public.tb_ciclo | type: TABLE --
CREATE TABLE public.tb_ciclo(
	tb_ciclo_cod character varying(10) NOT NULL,
	tb_ciclo_fec_ini date NOT NULL,
	tb_ciclo_fec_fin date NOT NULL,
	tb_ciclo_pre_bas numeric(12,2) NOT NULL,
	CONSTRAINT pk_ciclo_cod PRIMARY KEY (tb_ciclo_cod)

);
-- ddl-end --
ALTER TABLE public.tb_ciclo OWNER TO postgres;
-- ddl-end --

-- object: public.tb_turno_tb_turno_id_seq | type: SEQUENCE --
CREATE SEQUENCE public.tb_turno_tb_turno_id_seq
	INCREMENT BY 1
	MINVALUE 1
	MAXVALUE 9223372036854775807
	START WITH 1
	CACHE 1
	NO CYCLE
	OWNED BY NONE;
ALTER SEQUENCE public.tb_turno_tb_turno_id_seq OWNER TO postgres;
-- ddl-end --

-- object: public.tb_turno | type: TABLE --
CREATE TABLE public.tb_turno(
	tb_turno_id integer NOT NULL DEFAULT nextval('tb_turno_tb_turno_id_seq'::regclass),
	tb_turno_nom character varying NOT NULL,
	tb_turno_hor_ini time NOT NULL,
	tb_turno_hor_fin time NOT NULL,
	CONSTRAINT pk_turno_id PRIMARY KEY (tb_turno_id)

);
-- ddl-end --
ALTER TABLE public.tb_turno OWNER TO postgres;
-- ddl-end --

-- object: public.tb_nivel_tb_nivel_id_seq | type: SEQUENCE --
CREATE SEQUENCE public.tb_nivel_tb_nivel_id_seq
	INCREMENT BY 1
	MINVALUE 1
	MAXVALUE 9223372036854775807
	START WITH 1
	CACHE 1
	NO CYCLE
	OWNED BY NONE;
ALTER SEQUENCE public.tb_nivel_tb_nivel_id_seq OWNER TO postgres;
-- ddl-end --

-- object: public.tb_nivel | type: TABLE --
CREATE TABLE public.tb_nivel(
	tb_nivel_id integer NOT NULL DEFAULT nextval('tb_nivel_tb_nivel_id_seq'::regclass),
	tb_nivel_nom character varying(30) NOT NULL,
	tb_nivel_pos integer NOT NULL,
	CONSTRAINT pk_tb_nivel_id PRIMARY KEY (tb_nivel_id)

);
-- ddl-end --
ALTER TABLE public.tb_nivel OWNER TO postgres;
-- ddl-end --

-- object: public.tb_aulaturno_tb_aulaturno_id_seq | type: SEQUENCE --
CREATE SEQUENCE public.tb_aulaturno_tb_aulaturno_id_seq
	INCREMENT BY 1
	MINVALUE 1
	MAXVALUE 9223372036854775807
	START WITH 1
	CACHE 1
	NO CYCLE
	OWNED BY NONE;
ALTER SEQUENCE public.tb_aulaturno_tb_aulaturno_id_seq OWNER TO postgres;
-- ddl-end --

-- object: public.tb_aulaturno | type: TABLE --
CREATE TABLE public.tb_aulaturno(
	tb_aulaturno_id integer NOT NULL DEFAULT nextval('tb_aulaturno_tb_aulaturno_id_seq'::regclass),
	tb_aula_id integer NOT NULL,
	tb_turno_id integer NOT NULL,
	tb_nivel_id integer NOT NULL,
	CONSTRAINT pk_aulaturno_id PRIMARY KEY (tb_nivel_id)

);
-- ddl-end --
ALTER TABLE public.tb_aulaturno OWNER TO postgres;
-- ddl-end --

-- object: public.tb_alumno | type: TABLE --
CREATE TABLE public.tb_alumno(
	tb_alumno_cod character(5) NOT NULL,
	tb_alumno_sex character varying NOT NULL,
	tb_alumno_ape_pat character varying(50) NOT NULL,
	tb_alumno_ape_mat character varying(50) NOT NULL,
	tb_alumno_nom character varying(50) NOT NULL,
	tb_alumno_dir character varying(200) NOT NULL,
	tb_alumno_tel character varying(50),
	tb_alumno_rut_fot character varying(200) NOT NULL,
	tb_alumno_ema character varying(50),
	tb_alumno_dni character(8) NOT NULL,
	tb_alumno_est character varying,
	tb_alumno_fec_reg date NOT NULL,
	CONSTRAINT pk_alumno_cod PRIMARY KEY (tb_alumno_cod)

);
-- ddl-end --
ALTER TABLE public.tb_alumno OWNER TO postgres;
-- ddl-end --

-- object: public.tb_observacion_tb_observacion_id_seq | type: SEQUENCE --
CREATE SEQUENCE public.tb_observacion_tb_observacion_id_seq
	INCREMENT BY 1
	MINVALUE 1
	MAXVALUE 9223372036854775807
	START WITH 1
	CACHE 1
	NO CYCLE
	OWNED BY NONE;
ALTER SEQUENCE public.tb_observacion_tb_observacion_id_seq OWNER TO postgres;
-- ddl-end --

-- object: public.tb_observacion | type: TABLE --
CREATE TABLE public.tb_observacion(
	tb_observacion_id integer NOT NULL DEFAULT nextval('tb_observacion_tb_observacion_id_seq'::regclass),
	tb_obervacion_des text NOT NULL,
	tb_alumno_cod character(5) NOT NULL,
	tb_ciclo_cod character varying(10) NOT NULL,
	CONSTRAINT pk_observacion_id PRIMARY KEY (tb_observacion_id)

);
-- ddl-end --
ALTER TABLE public.tb_observacion OWNER TO postgres;
-- ddl-end --

-- object: public.tb_matricula_tb_matricula_id_seq | type: SEQUENCE --
CREATE SEQUENCE public.tb_matricula_tb_matricula_id_seq
	INCREMENT BY 1
	MINVALUE 1
	MAXVALUE 9223372036854775807
	START WITH 1
	CACHE 1
	NO CYCLE
	OWNED BY NONE;
ALTER SEQUENCE public.tb_matricula_tb_matricula_id_seq OWNER TO postgres;
-- ddl-end --

-- object: public.tb_matricula | type: TABLE --
CREATE TABLE public.tb_matricula(
	tb_matricula_id integer NOT NULL DEFAULT nextval('tb_matricula_tb_matricula_id_seq'::regclass),
	tb_matricula_fec date NOT NULL,
	tb_matricula_mon numeric(5,2) NOT NULL,
	tb_matricula_est_pag character NOT NULL,
	tb_ciclo_cod character varying(10) NOT NULL,
	tb_alumno_cod character(5) NOT NULL,
	tb_local_id integer NOT NULL,
	CONSTRAINT pk_tb_matricula_id PRIMARY KEY (tb_matricula_id)

);
-- ddl-end --
ALTER TABLE public.tb_matricula OWNER TO postgres;
-- ddl-end --

-- object: public.tb_pago_tb_pago_id_seq | type: SEQUENCE --
CREATE SEQUENCE public.tb_pago_tb_pago_id_seq
	INCREMENT BY 1
	MINVALUE 1
	MAXVALUE 9223372036854775807
	START WITH 1
	CACHE 1
	NO CYCLE
	OWNED BY NONE;
ALTER SEQUENCE public.tb_pago_tb_pago_id_seq OWNER TO postgres;
-- ddl-end --

-- object: public.tb_pago | type: TABLE --
CREATE TABLE public.tb_pago(
	tb_pago_id integer NOT NULL DEFAULT nextval('tb_pago_tb_pago_id_seq'::regclass),
	tb_pago_mon numeric(6,3) NOT NULL,
	tb_pago_fec date NOT NULL,
	tb_pago_est character NOT NULL,
	tb_pago_tip character NOT NULL,
	tb_matricula_id integer NOT NULL,
	CONSTRAINT pk_tb_pago_id PRIMARY KEY (tb_pago_id)

);
-- ddl-end --
ALTER TABLE public.tb_pago OWNER TO postgres;
-- ddl-end --

-- object: public.tb_asistencia_tb_asistencia_id_seq | type: SEQUENCE --
CREATE SEQUENCE public.tb_asistencia_tb_asistencia_id_seq
	INCREMENT BY 1
	MINVALUE 1
	MAXVALUE 9223372036854775807
	START WITH 1
	CACHE 1
	NO CYCLE
	OWNED BY NONE;
ALTER SEQUENCE public.tb_asistencia_tb_asistencia_id_seq OWNER TO postgres;
-- ddl-end --

-- object: public.tb_asistencia | type: TABLE --
CREATE TABLE public.tb_asistencia(
	tb_asistencia_id integer NOT NULL DEFAULT nextval('tb_asistencia_tb_asistencia_id_seq'::regclass),
	tb_asistencia_fec date NOT NULL,
	tb_asistencia_hor time NOT NULL,
	tb_matricula_id integer NOT NULL,
	CONSTRAINT pk_asistencia_id PRIMARY KEY (tb_asistencia_id)

);
-- ddl-end --
ALTER TABLE public.tb_asistencia OWNER TO postgres;
-- ddl-end --

-- object: public.tb_simulacro_tb_simulacro_id_seq | type: SEQUENCE --
CREATE SEQUENCE public.tb_simulacro_tb_simulacro_id_seq
	INCREMENT BY 1
	MINVALUE 1
	MAXVALUE 9223372036854775807
	START WITH 1
	CACHE 1
	NO CYCLE
	OWNED BY NONE;
ALTER SEQUENCE public.tb_simulacro_tb_simulacro_id_seq OWNER TO postgres;
-- ddl-end --

-- object: public.tb_simulacro | type: TABLE --
CREATE TABLE public.tb_simulacro(
	tb_simulacro_id integer NOT NULL DEFAULT nextval('tb_simulacro_tb_simulacro_id_seq'::regclass),
	tb_simulacro_rut_sim character varying(200) NOT NULL,
	tb_simulacro_fec date NOT NULL,
	tb_ciclo_cod character varying(10) NOT NULL,
	CONSTRAINT pk_simulacro_id PRIMARY KEY (tb_simulacro_id)

);
-- ddl-end --
ALTER TABLE public.tb_simulacro OWNER TO postgres;
-- ddl-end --

-- object: public.tb_historialalumno_tb_historialalumno_id_seq | type: SEQUENCE --
CREATE SEQUENCE public.tb_historialalumno_tb_historialalumno_id_seq
	INCREMENT BY 1
	MINVALUE 1
	MAXVALUE 9223372036854775807
	START WITH 1
	CACHE 1
	NO CYCLE
	OWNED BY NONE;
ALTER SEQUENCE public.tb_historialalumno_tb_historialalumno_id_seq OWNER TO postgres;
-- ddl-end --

-- object: public.tb_historialalumno | type: TABLE --
CREATE TABLE public.tb_historialalumno(
	tb_historialalumno_id integer NOT NULL DEFAULT nextval('tb_historialalumno_tb_historialalumno_id_seq'::regclass),
	tb_historialalumno_pun_sim numeric(6,3) NOT NULL,
	tb_historialalumno_est character NOT NULL,
	tb_matricula_id integer NOT NULL,
	CONSTRAINT pk_historialalumno_id PRIMARY KEY (tb_historialalumno_id)

);
-- ddl-end --
ALTER TABLE public.tb_historialalumno OWNER TO postgres;
-- ddl-end --

-- object: public.tb_resultadoexamen_tb_resultadoexamen_id_seq | type: SEQUENCE --
CREATE SEQUENCE public.tb_resultadoexamen_tb_resultadoexamen_id_seq
	INCREMENT BY 1
	MINVALUE 1
	MAXVALUE 9223372036854775807
	START WITH 1
	CACHE 1
	NO CYCLE
	OWNED BY NONE;
ALTER SEQUENCE public.tb_resultadoexamen_tb_resultadoexamen_id_seq OWNER TO postgres;
-- ddl-end --

-- object: public.tb_resultadoexamen | type: TABLE --
CREATE TABLE public.tb_resultadoexamen(
	tb_resultadoexamen_id integer NOT NULL DEFAULT nextval('tb_resultadoexamen_tb_resultadoexamen_id_seq'::regclass),
	tb_resultadoexamen_pun_min numeric(6,3) NOT NULL,
	tb_resultadoexamen_pun_max numeric(6,3) NOT NULL,
	tb_escuela_id integer NOT NULL,
	tb_usuario_id integer NOT NULL,
	tb_ciclo_cod character varying(10) NOT NULL,
	CONSTRAINT pk_resultadoexamen_id PRIMARY KEY (tb_resultadoexamen_id)

);
-- ddl-end --
ALTER TABLE public.tb_resultadoexamen OWNER TO postgres;
-- ddl-end --

-- object: fk_opcionmenu_opcionmenu | type: CONSTRAINT --
ALTER TABLE public.tb_opcionmenu ADD CONSTRAINT fk_opcionmenu_opcionmenu FOREIGN KEY (tb_opcionmenu_id_ref)
REFERENCES public.tb_opcionmenu (tb_opcionmenu_id) MATCH FULL
ON DELETE SET NULL ON UPDATE CASCADE NOT DEFERRABLE;
-- ddl-end --


-- object: tb_opcionmenu_fk | type: CONSTRAINT --
ALTER TABLE public.tb_acceso ADD CONSTRAINT tb_opcionmenu_fk FOREIGN KEY (tb_opcionmenu_id)
REFERENCES public.tb_opcionmenu (tb_opcionmenu_id) MATCH FULL
ON DELETE SET NULL ON UPDATE CASCADE NOT DEFERRABLE;
-- ddl-end --


-- object: tb_tipousuario_fk | type: CONSTRAINT --
ALTER TABLE public.tb_acceso ADD CONSTRAINT tb_tipousuario_fk FOREIGN KEY (tb_tipousuario_id)
REFERENCES public.tb_tipousuario (tb_tipousuario_id) MATCH FULL
ON DELETE SET NULL ON UPDATE CASCADE NOT DEFERRABLE;
-- ddl-end --


-- object: fk_usuario_tipousuario | type: CONSTRAINT --
ALTER TABLE public.tb_usuario ADD CONSTRAINT fk_usuario_tipousuario FOREIGN KEY (tb_tipousuario_id)
REFERENCES public.tb_tipousuario (tb_tipousuario_id) MATCH FULL
ON DELETE SET NULL ON UPDATE CASCADE NOT DEFERRABLE;
-- ddl-end --


-- object: fk_usuario_local | type: CONSTRAINT --
ALTER TABLE public.tb_usuario ADD CONSTRAINT fk_usuario_local FOREIGN KEY (tb_local_id)
REFERENCES public.tb_local (tb_local_id) MATCH FULL
ON DELETE SET NULL ON UPDATE CASCADE NOT DEFERRABLE;
-- ddl-end --


-- object: fk_bitacora_usuario | type: CONSTRAINT --
ALTER TABLE public.tb_bitacora ADD CONSTRAINT fk_bitacora_usuario FOREIGN KEY (tb_usuario_id)
REFERENCES public.tb_usuario (tb_usuario_id) MATCH FULL
ON DELETE SET NULL ON UPDATE CASCADE NOT DEFERRABLE;
-- ddl-end --


-- object: fk_escuela_grupo | type: CONSTRAINT --
ALTER TABLE public.tb_escuela ADD CONSTRAINT fk_escuela_grupo FOREIGN KEY (tb_grupo_id)
REFERENCES public.tb_grupo (tb_grupo_id) MATCH SIMPLE
ON DELETE NO ACTION ON UPDATE NO ACTION NOT DEFERRABLE;
-- ddl-end --


-- object: fk_aula_local | type: CONSTRAINT --
ALTER TABLE public.tb_aula ADD CONSTRAINT fk_aula_local FOREIGN KEY (tb_local_id)
REFERENCES public.tb_local (tb_local_id) MATCH SIMPLE
ON DELETE NO ACTION ON UPDATE NO ACTION NOT DEFERRABLE;
-- ddl-end --


-- object: fk_aulaturno_turno | type: CONSTRAINT --
ALTER TABLE public.tb_aulaturno ADD CONSTRAINT fk_aulaturno_turno FOREIGN KEY (tb_turno_id)
REFERENCES public.tb_turno (tb_turno_id) MATCH SIMPLE
ON DELETE NO ACTION ON UPDATE NO ACTION NOT DEFERRABLE;
-- ddl-end --


-- object: fk_aulaturno_aula | type: CONSTRAINT --
ALTER TABLE public.tb_aulaturno ADD CONSTRAINT fk_aulaturno_aula FOREIGN KEY (tb_aula_id)
REFERENCES public.tb_aula (tb_aula_id) MATCH SIMPLE
ON DELETE NO ACTION ON UPDATE NO ACTION NOT DEFERRABLE;
-- ddl-end --


-- object: fk_aulaturno_nivel | type: CONSTRAINT --
ALTER TABLE public.tb_aulaturno ADD CONSTRAINT fk_aulaturno_nivel FOREIGN KEY (tb_nivel_id)
REFERENCES public.tb_nivel (tb_nivel_id) MATCH SIMPLE
ON DELETE NO ACTION ON UPDATE NO ACTION NOT DEFERRABLE;
-- ddl-end --


-- object: fk_observacion_alumno | type: CONSTRAINT --
ALTER TABLE public.tb_observacion ADD CONSTRAINT fk_observacion_alumno FOREIGN KEY (tb_alumno_cod)
REFERENCES public.tb_alumno (tb_alumno_cod) MATCH SIMPLE
ON DELETE NO ACTION ON UPDATE NO ACTION NOT DEFERRABLE;
-- ddl-end --


-- object: fk_observacion_ciclo | type: CONSTRAINT --
ALTER TABLE public.tb_observacion ADD CONSTRAINT fk_observacion_ciclo FOREIGN KEY (tb_ciclo_cod)
REFERENCES public.tb_ciclo (tb_ciclo_cod) MATCH SIMPLE
ON DELETE NO ACTION ON UPDATE NO ACTION NOT DEFERRABLE;
-- ddl-end --


-- object: fk_matricula_ciclo | type: CONSTRAINT --
ALTER TABLE public.tb_matricula ADD CONSTRAINT fk_matricula_ciclo FOREIGN KEY (tb_ciclo_cod)
REFERENCES public.tb_ciclo (tb_ciclo_cod) MATCH SIMPLE
ON DELETE NO ACTION ON UPDATE NO ACTION NOT DEFERRABLE;
-- ddl-end --


-- object: fk_matricula_alumno | type: CONSTRAINT --
ALTER TABLE public.tb_matricula ADD CONSTRAINT fk_matricula_alumno FOREIGN KEY (tb_alumno_cod)
REFERENCES public.tb_alumno (tb_alumno_cod) MATCH SIMPLE
ON DELETE NO ACTION ON UPDATE NO ACTION NOT DEFERRABLE;
-- ddl-end --


-- object: fk_matricula_local | type: CONSTRAINT --
ALTER TABLE public.tb_matricula ADD CONSTRAINT fk_matricula_local FOREIGN KEY (tb_local_id)
REFERENCES public.tb_local (tb_local_id) MATCH SIMPLE
ON DELETE NO ACTION ON UPDATE NO ACTION NOT DEFERRABLE;
-- ddl-end --


-- object: fk_pago_matricula | type: CONSTRAINT --
ALTER TABLE public.tb_pago ADD CONSTRAINT fk_pago_matricula FOREIGN KEY (tb_matricula_id)
REFERENCES public.tb_matricula (tb_matricula_id) MATCH SIMPLE
ON DELETE NO ACTION ON UPDATE NO ACTION NOT DEFERRABLE;
-- ddl-end --


-- object: fk_asistencia_matricula | type: CONSTRAINT --
ALTER TABLE public.tb_asistencia ADD CONSTRAINT fk_asistencia_matricula FOREIGN KEY (tb_matricula_id)
REFERENCES public.tb_matricula (tb_matricula_id) MATCH SIMPLE
ON DELETE NO ACTION ON UPDATE NO ACTION NOT DEFERRABLE;
-- ddl-end --


-- object: fk_simulacro_ciclo | type: CONSTRAINT --
ALTER TABLE public.tb_simulacro ADD CONSTRAINT fk_simulacro_ciclo FOREIGN KEY (tb_ciclo_cod)
REFERENCES public.tb_ciclo (tb_ciclo_cod) MATCH SIMPLE
ON DELETE NO ACTION ON UPDATE NO ACTION NOT DEFERRABLE;
-- ddl-end --


-- object: fk_historialalumno_matricula | type: CONSTRAINT --
ALTER TABLE public.tb_historialalumno ADD CONSTRAINT fk_historialalumno_matricula FOREIGN KEY (tb_matricula_id)
REFERENCES public.tb_matricula (tb_matricula_id) MATCH SIMPLE
ON DELETE NO ACTION ON UPDATE NO ACTION NOT DEFERRABLE;
-- ddl-end --


-- object: fk_resultadoexamen_escuela | type: CONSTRAINT --
ALTER TABLE public.tb_resultadoexamen ADD CONSTRAINT fk_resultadoexamen_escuela FOREIGN KEY (tb_escuela_id)
REFERENCES public.tb_escuela (tb_escuela_id) MATCH SIMPLE
ON DELETE NO ACTION ON UPDATE NO ACTION NOT DEFERRABLE;
-- ddl-end --


-- object: fk_resultadoexamen_usuario | type: CONSTRAINT --
ALTER TABLE public.tb_resultadoexamen ADD CONSTRAINT fk_resultadoexamen_usuario FOREIGN KEY (tb_usuario_id)
REFERENCES public.tb_usuario (tb_usuario_id) MATCH SIMPLE
ON DELETE NO ACTION ON UPDATE NO ACTION NOT DEFERRABLE;
-- ddl-end --


-- object: fk_resultadoexamen_ciclo | type: CONSTRAINT --
ALTER TABLE public.tb_resultadoexamen ADD CONSTRAINT fk_resultadoexamen_ciclo FOREIGN KEY (tb_ciclo_cod)
REFERENCES public.tb_ciclo (tb_ciclo_cod) MATCH FULL
ON DELETE NO ACTION ON UPDATE NO ACTION NOT DEFERRABLE;
-- ddl-end --



