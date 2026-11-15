-- Data set: ADS Impersonated Session History (staging table)
-- Source: https://community.d2l.com/brightspace/kb/articles/4539-list-of-advanced-data-sets#impersonated-session-history
CREATE TABLE "ADS_IMPERSONATED_SESSION_HISTORY_LOAD" (
    "SESSIONID" NUMBER(10),
    "USERID" NUMBER(10),
    "USERNAME" VARCHAR2(540 CHAR),
    "DATESTARTED" TIMESTAMP(7),
    "DATEENDED" TIMESTAMP(7),
    "IMPERSONATINGUSERID" NUMBER(10),
    "IMPERSONATINGUSERNAME" VARCHAR2(540 CHAR)
);
