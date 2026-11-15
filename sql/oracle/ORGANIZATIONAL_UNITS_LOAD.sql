-- Data set: Organizational Units (staging table)
-- Source: https://community.d2l.com/brightspace/kb/articles/4529-organizational-units-data-sets#organizational-units
CREATE TABLE "ORGANIZATIONAL_UNITS_LOAD" (
    "ORGUNITID" NUMBER(10) NOT NULL,
    "ORGANIZATION" VARCHAR2(50 CHAR),
    "TYPE" VARCHAR2(50 CHAR),
    "NAME" VARCHAR2(128 CHAR),
    "CODE" VARCHAR2(50 CHAR),
    "STARTDATE" TIMESTAMP(7),
    "ENDDATE" TIMESTAMP(7),
    "ISACTIVE" NUMBER(1),
    "CREATEDDATE" TIMESTAMP(7),
    "ISDELETED" NUMBER(1),
    "DELETEDDATE" TIMESTAMP(7),
    "RECYCLEDDATE" TIMESTAMP(7),
    "VERSION" NUMBER(19),
    "ORGUNITTYPEID" NUMBER(10),
    PRIMARY KEY ("ORGUNITID")
);
