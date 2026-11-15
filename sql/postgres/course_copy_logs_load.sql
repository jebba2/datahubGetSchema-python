-- Data set: Course Copy Logs (staging table)
-- Source: https://community.d2l.com/brightspace/kb/articles/4725-course-copy-data-sets#course-copy-logs
CREATE TABLE "course_copy_logs_load" (
    "sourceorgunitid" INTEGER,
    "destinationorgunitid" INTEGER,
    "userid" BIGINT,
    "status" VARCHAR(128),
    "startdate" TIMESTAMP(6),
    "enddate" TIMESTAMP(6),
    "isdestinationnew" BOOLEAN,
    "copyprotectedresources" BOOLEAN,
    "copycoursejobid" BIGINT NOT NULL,
    "statusid" INTEGER,
    PRIMARY KEY ("copycoursejobid")
);
