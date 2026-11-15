-- Data set: Course Awards (staging table)
-- Source: https://community.d2l.com/brightspace/kb/articles/4520-awards-data-sets#course-awards
CREATE TABLE "COURSE_AWARDS_LOAD" (
    "ASSOCIATIONID" NUMBER(19) NOT NULL,
    "AWARDID" NUMBER(19),
    "ORGUNITID" NUMBER(19),
    "DATECREATED" TIMESTAMP(7),
    "HIDDENAWARD" NUMBER(1),
    "CONDITIONSETID" NUMBER(19),
    "LASTMODIFIED" TIMESTAMP(7),
    "CREDITS" NUMBER(9,2),
    "ISASSOCIATED" NUMBER(1),
    "VERSION" NUMBER(19),
    PRIMARY KEY ("ASSOCIATIONID")
);
