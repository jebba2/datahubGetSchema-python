-- Data set: Rubric Objects (staging table)
-- Source: https://community.d2l.com/brightspace/kb/articles/4535-rubrics-data-sets#rubric-objects
CREATE TABLE "RUBRIC_OBJECTS_LOAD" (
    "RUBRICID" NUMBER(19) NOT NULL,
    "NAME" VARCHAR2(256 CHAR),
    "RUBRICSTATUS" VARCHAR2(256 CHAR),
    "DESCRIPTION" VARCHAR2(1000 CHAR),
    "RUBRICTYPE" VARCHAR2(256 CHAR),
    "SCORINGMETHODS" VARCHAR2(256 CHAR),
    "ISSCOREVISIBLE" NUMBER(1),
    "ORGUNITID" NUMBER(10),
    "ISSHARED" NUMBER(1),
    "ISDELETED" NUMBER(1),
    PRIMARY KEY ("RUBRICID")
);
