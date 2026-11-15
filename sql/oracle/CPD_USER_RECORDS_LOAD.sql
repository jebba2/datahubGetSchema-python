-- Data set: CPD User Records (staging table)
-- Source: https://community.d2l.com/brightspace/kb/articles/26020-continuous-professional-development-cpd-data-sets#cpd-user-records
CREATE TABLE "CPD_USER_RECORDS_LOAD" (
    "RECORDID" NUMBER(10) NOT NULL,
    "RECORDNAME" VARCHAR2(256 CHAR),
    "STATE" VARCHAR2(50 CHAR),
    "USERID" NUMBER(19),
    "CATEGORY" NUMBER(19),
    "METHOD" NUMBER(19),
    "CREDITMINUTES" NUMBER(19),
    "EVIDENCE" CLOB,
    "TYPE" VARCHAR2(50 CHAR),
    "GRADE" NUMBER(4,3),
    "DATECOMPLETED" TIMESTAMP(7),
    "LASTMODIFIED" TIMESTAMP(7),
    "DATEDELETED" TIMESTAMP(7),
    "VERSION" NUMBER(19),
    PRIMARY KEY ("RECORDID")
);
