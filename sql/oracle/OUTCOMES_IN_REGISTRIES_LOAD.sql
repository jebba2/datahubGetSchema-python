-- Data set: Outcomes in Registries (staging table)
-- Source: https://community.d2l.com/brightspace/kb/articles/4796-outcomes-data-sets#outcomes-in-registries
CREATE TABLE "OUTCOMES_IN_REGISTRIES_LOAD" (
    "OUTCOMEID" VARCHAR2(36 CHAR) NOT NULL,
    "REGISTRYID" VARCHAR2(36 CHAR) NOT NULL,
    "CREATEDDATE" TIMESTAMP(7),
    "CREATEDBY" NUMBER(10),
    "LASTMODIFIEDDATE" TIMESTAMP(7),
    "LASTMODIFIEDBY" NUMBER(10),
    "ISDELETED" NUMBER(1),
    PRIMARY KEY ("OUTCOMEID", "REGISTRYID")
);
