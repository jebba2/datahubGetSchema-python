-- Data set: Grade Schemes (staging table)
-- Source: https://community.d2l.com/brightspace/kb/articles/4527-grades-data-sets#grade-schemes
CREATE TABLE "GRADE_SCHEMES_LOAD" (
    "GRADESCHEMEID" NUMBER(19) NOT NULL,
    "ORGUNITID" NUMBER(10),
    "SCHEMENAME" VARCHAR2(128 CHAR),
    "DELETEDDATE" TIMESTAMP(7),
    "VERSION" NUMBER(19),
    PRIMARY KEY ("GRADESCHEMEID")
);
