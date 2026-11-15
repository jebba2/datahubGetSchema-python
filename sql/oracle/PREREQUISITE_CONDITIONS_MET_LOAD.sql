-- Data set: PreRequisite Conditions Met (staging table)
-- Source: https://community.d2l.com/brightspace/kb/articles/4533-release-conditions-data-sets#prerequisite-conditions-met
CREATE TABLE "PREREQUISITE_CONDITIONS_MET_LOAD" (
    "PREREQUISITEID" NUMBER(10) NOT NULL,
    "USERID" NUMBER(10) NOT NULL,
    "DATEMET" TIMESTAMP(7),
    "ACTION" VARCHAR2(7 CHAR),
    "LASTMODIFIED" TIMESTAMP(7),
    PRIMARY KEY ("PREREQUISITEID", "USERID")
);
