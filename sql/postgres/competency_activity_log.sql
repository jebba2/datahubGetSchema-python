-- Data set: Competency Activity Log
-- Source: https://community.d2l.com/brightspace/kb/articles/4754-competency-data-sets#competency-activity-log
CREATE TABLE "competency_activity_log" (
    "activityid" BIGINT NOT NULL,
    "activitylogid" BIGINT NOT NULL,
    "logtypeid" INTEGER,
    "logtypename" VARCHAR(19),
    "logdatetime" TIMESTAMP(6),
    "modifiedby" BIGINT,
    PRIMARY KEY ("activityid", "activitylogid")
);
CREATE INDEX "ix_competency_activity_log_modifiedby" ON "competency_activity_log" ("modifiedby");
