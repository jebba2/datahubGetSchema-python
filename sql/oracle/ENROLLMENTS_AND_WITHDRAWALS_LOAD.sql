-- Data set: Enrollments and Withdrawals (staging table)
-- Source: https://community.d2l.com/brightspace/kb/articles/4740-users-data-sets#enrollments-and-withdrawals
CREATE TABLE "ENROLLMENTS_AND_WITHDRAWALS_LOAD" (
    "LOGID" NUMBER(19) NOT NULL,
    "USERID" NUMBER(10),
    "ORGUNITID" NUMBER(10),
    "ROLEID" NUMBER(10),
    "ACTION" VARCHAR2(50 CHAR),
    "MODIFIEDBYUSERID" NUMBER(10),
    "ENROLLMENTDATE" TIMESTAMP(7),
    PRIMARY KEY ("LOGID")
);
