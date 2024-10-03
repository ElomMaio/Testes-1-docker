SET DATESTYLE TO PostgreSQL,European;

CREATE DATABASE 
    WITH 
    TEMPLATE = template0 
    ENCODING = 'UTF8' 
    LC_COLLATE = 'en_US.utf8' 
    LC_CTYPE = 'en_US.utf8';

CREATE TABLE tbl_formularios (
    a VARCHAR PRIMARY KEY,
    b TEXT,
    c VARCHAR
);

CREATE TABLE forms (
    a TEXT UNIQUE NOT NULL PRIMARY KEY,
    b VARCHAR UNIQUE NOT NULL,
    c VARCHAR,
    FOREIGN KEY (b) REFERENCES tbl_formularios(b)
);
