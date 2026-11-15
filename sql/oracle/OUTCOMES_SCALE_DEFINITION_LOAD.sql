-- Data set: Outcomes Scale Definition (staging table)
-- Source: https://community.d2l.com/brightspace/kb/articles/4796-outcomes-data-sets#outcomes-scale-definition
CREATE TABLE "OUTCOMES_SCALE_DEFINITION_LOAD" (
    "SCALEID" VARCHAR2(36 CHAR) NOT NULL,
    "NAME" VARCHAR2(1000 CHAR),
    "ISDEFAULT" NUMBER(1),
    "USEPERCENTAGES" NUMBER(1),
    "CREATEDDATE" TIMESTAMP(7),
    "CREATEDBY" NUMBER(10),
    "LASTMODIFIEDDATE" TIMESTAMP(7),
    "LASTMODIFIEDBY" NUMBER(10),
    "ISDELETED" NUMBER(1),
    "ACHIEVEMENTTHRESHOLD" VARCHAR2(36 CHAR),
    PRIMARY KEY ("SCALEID")
);
