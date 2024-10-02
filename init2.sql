CREATE TABLE tbl_formularios (
    a.1 VARCHAR PRIMARY KEY,
    b.1 TEXT,
    c.1 VARCHAR
    );

CREATE TABLE forms (
    a.2 TEXT UNIQUE NOT NULL PRIMARY KEY,
    b.2 VARCHAR UNIQUE NOT NULL,
    c.2 VARCHAR,
    CONSTRAINT b.1
        FOREIGN KEY (b.1)
        REFERENCES tbl_formularios(b.1)
);
