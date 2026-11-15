-- Data set: Course Publisher Recipients (staging table)
-- Source: https://community.d2l.com/brightspace/kb/articles/4524-course-publisher-data-sets#course-publisher-recipients
CREATE TABLE "COURSE_PUBLISHER_RECIPIENTS_LOAD" (
    "RECIPIENTID" VARCHAR2(36 CHAR) NOT NULL,
    "NAME" VARCHAR2(256 CHAR),
    "CREATEDAT" TIMESTAMP(7),
    "LASTMODIFIED" TIMESTAMP(7),
    PRIMARY KEY ("RECIPIENTID")
);
