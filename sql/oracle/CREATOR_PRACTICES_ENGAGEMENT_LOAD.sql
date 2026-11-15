-- Data set: Creator+ Practices Engagement (staging table)
-- Source: https://community.d2l.com/brightspace/kb/articles/26161-creator-data-sets#creator-practices-engagement
CREATE TABLE "CREATOR_PRACTICES_ENGAGEMENT_LOAD" (
    "PRACTICEENGAGEMENTID" NUMBER(10) NOT NULL,
    "USERID" NUMBER(10),
    "ORGUNITID" NUMBER(10),
    "COMPLETIONSTATUS" VARCHAR2(10 CHAR),
    "ACTIVITYINSTANCEID" NUMBER(10),
    "COMPLETIONDATE" TIMESTAMP(7),
    "VERSION" NUMBER(19),
    PRIMARY KEY ("PRACTICEENGAGEMENTID")
);
