-- Data set: User Enrollments (staging table)
-- Source: https://community.d2l.com/brightspace/kb/articles/4740-users-data-sets#user-enrollments
CREATE TABLE "USER_ENROLLMENTS_LOAD" (
    "ORGUNITID" NUMBER(10) NOT NULL,
    "USERID" NUMBER(10) NOT NULL,
    "ROLENAME" VARCHAR2(60 CHAR),
    "ENROLLMENTDATE" TIMESTAMP(7),
    "ENROLLMENTTYPE" VARCHAR2(50 CHAR),
    "ROLEID" NUMBER(10),
    PRIMARY KEY ("ORGUNITID", "USERID")
);
