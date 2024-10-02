SET DATESTYLE TO PostgreSQL,European;

CREATE DATABASE ELOM 
    WITH 
    TEMPLATE = template0 
    ENCODING = 'UTF8' 
    LC_COLLATE = 'en_US.utf8' 
    LC_CTYPE = 'en_US.utf8';

ALTER DATABASE ELOM OWNER TO ELOM;

CREATE TABLE tbl_formularios (
    1.1 VARCHAR PRIMARY KEY,
    2.1 TEXT,
    3.1 VARCHAR
    );

CREATE TABLE forms (
    1.2 TEXT UNIQUE NOT NULL PRIMARY KEY,
    2.2 VARCHAR UNIQUE NOT NULL,
    3.2 VARCHAR,
    CONSTRAINT 2.1
        FOREIGN KEY (2.1)
        REFERENCES tbl_formularios(2.1)
);