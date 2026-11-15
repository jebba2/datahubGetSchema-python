-- Data set: Course Publisher Recipients (staging table)
-- Source: https://community.d2l.com/brightspace/kb/articles/4524-course-publisher-data-sets#course-publisher-recipients
CREATE TABLE "course_publisher_recipients_load" (
    "recipientid" UUID NOT NULL,
    "name" VARCHAR(256),
    "createdat" TIMESTAMP(6),
    "lastmodified" TIMESTAMP(6),
    PRIMARY KEY ("recipientid")
);
