-- Data set: Course Publisher Recipients
-- Source: https://community.d2l.com/brightspace/kb/articles/4524-course-publisher-data-sets#course-publisher-recipients
CREATE TABLE "course_publisher_recipients" (
    "recipientid" UUID NOT NULL,
    "name" VARCHAR(256),
    "createdat" TIMESTAMP(6),
    "lastmodified" TIMESTAMP(6),
    PRIMARY KEY ("recipientid")
);
