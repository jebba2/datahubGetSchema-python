-- Data set: Creator+ Practices Adoption (staging table)
-- Source: https://community.d2l.com/brightspace/kb/articles/26161-creator-data-sets#creator-practices-adoption
CREATE TABLE "CREATOR_PRACTICES_ADOPTION_LOAD" (
    "ACTIVITYINSTANCEID" NUMBER(10) NOT NULL,
    "CREATEDBYID" NUMBER(10),
    "ORGUNITID" NUMBER(10),
    "PRACTICETYPE" VARCHAR2(32 CHAR),
    "PRACTICETITLE" VARCHAR2(255 CHAR),
    "PROVIDEROBJECTID" NUMBER(10),
    "CREATEDDATE" TIMESTAMP(7),
    "VERSION" NUMBER(19),
    PRIMARY KEY ("ACTIVITYINSTANCEID")
);
