-- Data set: SIS Course Merge Log (staging table)
-- Source: https://community.d2l.com/brightspace/kb/articles/19147-sis-course-merge-data-sets#sis-course-merge-log
CREATE TABLE "sis_course_merge_log_load" (
    "batchid" UUID NOT NULL,
    "jobtype" VARCHAR(32),
    "status" VARCHAR(32),
    "originaltargetorgunitid" BIGINT,
    "originalsourceorgunitid" BIGINT NOT NULL,
    "sourcesystemid" BIGINT,
    "numberofcoursesinbatch" INTEGER,
    "userid" BIGINT,
    "errortype" VARCHAR(48),
    "timestamp" TIMESTAMP(6) NOT NULL,
    PRIMARY KEY ("batchid", "originalsourceorgunitid", "timestamp")
);
