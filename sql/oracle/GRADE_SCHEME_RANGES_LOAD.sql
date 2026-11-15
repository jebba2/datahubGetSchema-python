-- Data set: Grade Scheme Ranges (staging table)
-- Source: https://community.d2l.com/brightspace/kb/articles/4527-grades-data-sets#grade-scheme-ranges
CREATE TABLE "GRADE_SCHEME_RANGES_LOAD" (
    "GRADESCHEMERANGEID" NUMBER(19) NOT NULL,
    "GRADESCHEMEID" NUMBER(19) NOT NULL,
    "SYMBOLSTRING" VARCHAR2(100 CHAR),
    "ASSIGNEDVALUE" NUMBER(19,9),
    "RANGESTART" NUMBER(19,9),
    "ISDELETED" NUMBER(1),
    "VERSION" NUMBER(19),
    PRIMARY KEY ("GRADESCHEMERANGEID", "GRADESCHEMEID")
);
