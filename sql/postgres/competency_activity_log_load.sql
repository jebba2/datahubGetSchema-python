-- Data set: Competency Activity Log (staging table)
-- Source: https://community.d2l.com/brightspace/kb/articles/4754-competency-data-sets#competency-activity-log
CREATE TABLE "competency_activity_log_load" (
    "activityid" BIGINT NOT NULL,
    "activitylogid" BIGINT NOT NULL,
    "logtypeid" INTEGER,
    "logtypename" VARCHAR(19),
    "logdatetime" TIMESTAMP(6),
    "modifiedby" BIGINT,
    PRIMARY KEY ("activityid", "activitylogid")
);
