-- Data set: Outcomes Scale Level Definition (staging table)
-- Source: https://community.d2l.com/brightspace/kb/articles/4796-outcomes-data-sets#outcomes-scale-level-definition
CREATE TABLE "OUTCOMES_SCALE_LEVEL_DEFINITION_LOAD" (
    "SCALELEVELID" VARCHAR2(36 CHAR) NOT NULL,
    "SCALEID" VARCHAR2(36 CHAR),
    "NAME" VARCHAR2(1000 CHAR),
    "SORTORDER" NUMBER(10),
    "PERCENTAGERANGESTART" NUMBER(10),
    "RGB" VARCHAR2(40 CHAR),
    "CREATEDDATE" TIMESTAMP(7),
    "CREATEDBY" NUMBER(10),
    "LASTMODIFIEDDATE" TIMESTAMP(7),
    "LASTMODIFIEDBY" NUMBER(10),
    PRIMARY KEY ("SCALELEVELID")
);
