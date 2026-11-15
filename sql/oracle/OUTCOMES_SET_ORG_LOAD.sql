-- Data set: Outcomes Set Org (staging table)
-- Source: https://community.d2l.com/brightspace/kb/articles/4796-outcomes-data-sets#outcomes-set-org
CREATE TABLE "OUTCOMES_SET_ORG_LOAD" (
    "OUTCOMESETID" NUMBER(19) NOT NULL,
    "OUTCOMESETNAME" VARCHAR2(256 CHAR),
    "REGISTRYID" VARCHAR2(36 CHAR),
    "CREATEDDATE" TIMESTAMP(7),
    "CREATEDBY" NUMBER(10),
    "LASTMODIFIEDDATE" TIMESTAMP(7),
    "LASTMODIFIEDBY" NUMBER(10),
    "ISDELETED" NUMBER(1),
    "SCALEID" VARCHAR2(36 CHAR),
    PRIMARY KEY ("OUTCOMESETID")
);
