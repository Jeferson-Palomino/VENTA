create database ventas
	DEFAULT CHARACTER SET utf8;
use ventas;
CREATE TABLE CLIENTE (
    CODCLIEN varchar(8) NOT NULL COMMENT 'contiene el codigo del cliente',
    NOMCLIEN varchar(50) NULL COMMENT 'contiene los nombres del cliente',
    APECLIEN varchar(80) NULL COMMENT 'contiene los apellidos del cliente',
    CUICLIENT varchar(80) NOT NULL COMMENT 'contiene la cuidad del cliente',
    ESTCLIEN char(2) NOT NULL COMMENT 'contiene los estado del cliente',
    ZIPCLIEN char(9) NOT NULL COMMENT 'contiene EL ZIP del cliente',
    PAGCLIEN decimal(10,2) NOT NULL COMMENT 'contiene el pago del cliente',
    CONSTRAINT CLIENTE_pk PRIMARY KEY (CODCLIEN)
);

CREATE TABLE EMPLEADO (
    CODEMP varchar(8) NOT NULL COMMENT 'contiene el codigo del empleado',
    NOMEMP varchar(80) NULL COMMENT 'contiene los nombres del empleado',
    APEEMP varchar(80) NULL COMMENT 'contiene el apellido del empleado',
    CELEMP char(14) NOT NULL COMMENT 'contiene el celular del empleado',
    EMAEMP varchar(100) NULL COMMENT 'contiene el correo del empleado',
    CONSTRAINT EMPLEADO_pk PRIMARY KEY (CODEMP)
);

CREATE TABLE ORDEN (
    CODORD varchar(8) NOT NULL COMMENT 'contien el identificador de orden',
    FECORD date NOT NULL COMMENT 'contiene la fecha',
    CODCLIEN  varchar(8) NULL COMMENT 'contiene el codigo del cliente',
    CODEMP varchar(8) NULL COMMENT 'contiene el codigo del empleado',
    CONSTRAINT ORDEN_pk PRIMARY KEY (CODORD)
);

ALTER TABLE ORDEN ADD CONSTRAINT ORDEN_CLIENTE FOREIGN KEY ORDEN_CLIENTE (CODCLIEN)
    REFERENCES CLIENTE (CODCLIEN);

ALTER TABLE ORDEN ADD CONSTRAINT ORDEN_EMPLEADO FOREIGN KEY ORDEN_EMPLEADO (CODEMP)
    REFERENCES EMPLEADO (CODEMP);