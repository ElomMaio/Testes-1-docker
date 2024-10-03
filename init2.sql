SET DATESTYLE TO PostgreSQL, European;

CREATE DATABASE my_database
    WITH 
    TEMPLATE = template0 
    ENCODING = 'UTF8' 
    LC_COLLATE = 'en_US.utf8' 
    LC_CTYPE = 'en_US.utf8';

\c my_database 
CREATE TABLE tbl_formularios (
    a VARCHAR PRIMARY KEY,
    b TEXT UNIQUE,  -- Alterado para UNIQUE
    c VARCHAR
);

CREATE TABLE forms (
    a TEXT UNIQUE NOT NULL PRIMARY KEY,
    b VARCHAR UNIQUE NOT NULL,
    c VARCHAR,
    FOREIGN KEY (b) REFERENCES tbl_formularios(b)  
);
