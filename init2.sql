CREATE TABLE tbl_formularios (
    a.a VARCHAR PRIMARY KEY,
    b.b TEXT,
    c.c VARCHAR
    );

CREATE TABLE forms (
    b.a TEXT UNIQUE NOT NULL PRIMARY KEY,
    b.b VARCHAR UNIQUE NOT NULL,
    b.c VARCHAR,
    CONSTRAINT b.b
        FOREIGN KEY (b.b)
        REFERENCES tbl_formularios(b.b)
);
