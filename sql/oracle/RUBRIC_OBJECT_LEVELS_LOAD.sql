-- Data set: Rubric Object Levels (staging table)
-- Source: https://community.d2l.com/brightspace/kb/articles/4535-rubrics-data-sets#rubric-object-levels
CREATE TABLE "RUBRIC_OBJECT_LEVELS_LOAD" (
    "RUBRICID" NUMBER(19),
    "LEVELID" NUMBER(19) NOT NULL,
    "NAME" VARCHAR2(256 CHAR),
    "DESCRIPTION" VARCHAR2(1000 CHAR),
    "FEEDBACK" VARCHAR2(1000 CHAR),
    "VALUE" NUMBER(19,9),
    "RANGESTARTVALUE" NUMBER(19,9),
    "SORTORDER" NUMBER(10),
    "LEVELSETID" NUMBER(19),
    "ISDELETED" NUMBER(1),
    PRIMARY KEY ("LEVELID")
);
