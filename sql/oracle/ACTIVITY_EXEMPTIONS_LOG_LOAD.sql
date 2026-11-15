-- Data set: Activity Exemptions Log (staging table)
-- Source: https://community.d2l.com/brightspace/kb/articles/4526-exemptions-data-sets#activity-exemptions-log
CREATE TABLE "ACTIVITY_EXEMPTIONS_LOG_LOAD" (
    "ORGUNITID" NUMBER(10),
    "USERID" NUMBER(10),
    "OBJECTID" NUMBER(10),
    "ACTIVITYID" VARCHAR2(225 CHAR),
    "LOGTYPENAME" VARCHAR2(50 CHAR),
    "LASTMODIFIEDUTC" TIMESTAMP(7),
    "LASTMODIFIEDBY" NUMBER(10),
    "ACTIVITYEXEMPTIONSLOGID" NUMBER(19) NOT NULL,
    "TOOLID" NUMBER(10),
    PRIMARY KEY ("ACTIVITYEXEMPTIONSLOGID")
);
