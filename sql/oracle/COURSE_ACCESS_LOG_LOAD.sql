-- Data set: Course Access Log (staging table)
-- Source: https://community.d2l.com/brightspace/kb/articles/4740-users-data-sets#course-access-log
CREATE TABLE "COURSE_ACCESS_LOG_LOAD" (
    "ORGUNITID" NUMBER(10) NOT NULL,
    "USERID" NUMBER(10) NOT NULL,
    "TIMESTAMP" TIMESTAMP(7) NOT NULL,
    "SOURCE" VARCHAR2(20 CHAR) NOT NULL,
    PRIMARY KEY ("ORGUNITID", "USERID", "TIMESTAMP", "SOURCE")
);
