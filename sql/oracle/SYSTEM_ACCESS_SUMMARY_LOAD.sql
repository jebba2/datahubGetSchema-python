-- Data set: System Access Summary (staging table)
-- Source: https://community.d2l.com/brightspace/kb/articles/4537-sessions-and-system-access-data-sets#system-access-summary
CREATE TABLE "SYSTEM_ACCESS_SUMMARY_LOAD" (
    "USERID" NUMBER(10) NOT NULL,
    "IMPERSONATINGUSERID" NUMBER(10),
    "LASTSYSTEMACCESS" TIMESTAMP(7),
    "SOURCE" VARCHAR2(20 CHAR),
    PRIMARY KEY ("USERID")
);
