-- Data set: Course Publisher Launches (staging table)
-- Source: https://community.d2l.com/brightspace/kb/articles/4524-course-publisher-data-sets#course-publisher-launches
CREATE TABLE "COURSE_PUBLISHER_LAUNCHES_LOAD" (
    "LAUNCHID" VARCHAR2(36 CHAR) NOT NULL,
    "ORGUNITID" NUMBER(19),
    "RECIPIENTID" VARCHAR2(36 CHAR),
    "USERID" NUMBER(19),
    "ROLEID" NUMBER(19),
    "LAUNCHMETHOD" VARCHAR2(256 CHAR),
    "EXTERNALUSERID" VARCHAR2(256 CHAR),
    "EXTERNALLMSTYPE" VARCHAR2(256 CHAR),
    "ISNEWUSER" NUMBER(1),
    "LASTMODIFIED" TIMESTAMP(7),
    PRIMARY KEY ("LAUNCHID")
);
