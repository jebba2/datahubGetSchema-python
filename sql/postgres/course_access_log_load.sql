-- Data set: Course Access Log (staging table)
-- Source: https://community.d2l.com/brightspace/kb/articles/4740-users-data-sets#course-access-log
CREATE TABLE "course_access_log_load" (
    "orgunitid" INTEGER NOT NULL,
    "userid" INTEGER NOT NULL,
    "timestamp" TIMESTAMP(6) NOT NULL,
    "source" VARCHAR(20) NOT NULL,
    PRIMARY KEY ("orgunitid", "userid", "timestamp", "source")
);
