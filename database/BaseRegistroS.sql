/**************************
* Base de datos para Registro Civil
*   Realizo: Mendoza Garcia Luis Angel
*   Creacion: 20-07-2022
*   Ultima Mod.: ---------
***************************/

/*DROP DATABASE registros;*/

CREATE DATABASE registros;

USE registros;

/***********Entidades fuertes*************/

CREATE TABLE usuario(
    n_emp int auto_increment not null,
    nombre_u varchar(25)not null,
    app_u varchar(25)not null,
    apm_u varchar(25)not null,
    correo varchar(60)not null,
    pass varchar(15)not null,
    primary key(n_emp)
);

/**Modificar campos de la base de datos**/
ALTER TABLE usuario
    modify n_emp int auto_increment not null,
    modify nombre_u varchar(25)not null,
    modify app_u varchar(25)not null,
    modify apm_u varchar(25)not null,
    modify correo varchar(60)not null,
    modify pass varchar(15)not null;

/** Agregamos Columna a tabla ya creada **/
ALTER TABLE usuario ADD COLUMN tipo_us char(1) not null;

/** Eliminamos Columna a tabla ya creada **/
ALTER TABLE usuario DROP COLUMN tipo_us;

/*Agregamos valores en automatico*/
ALTER TABLE usuario ADD COLUMN fecha datetime default now();

/** Actualizacion de datos masivos*/
UPDATE usuario SET Vbo = null;

/** Actualizacion de datos espesificos */
UPDATE usuario SET Vbo = null WHERE n_emp = 1;


