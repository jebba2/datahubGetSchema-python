-- Data set: SCORM Activity Attempts
-- Source: https://community.d2l.com/brightspace/kb/articles/4536-scorm-data-sets#scorm-activity-attempts
CREATE TABLE "scorm_activity_attempts" (
    "visitid" UUID NOT NULL,
    "activityid" UUID NOT NULL,
    "attemptnumber" INTEGER NOT NULL,
    "completion" VARCHAR(100),
    "success" VARCHAR(100),
    "score" DOUBLE PRECISION,
    "scoreraw" DOUBLE PRECISION,
    "timespent" DOUBLE PRECISION,
    "progress" DOUBLE PRECISION,
    "lastmodified" TIMESTAMP(6),
    PRIMARY KEY ("visitid", "activityid", "attemptnumber")
);
CREATE INDEX "ix_scorm_activity_attempts_activityid" ON "scorm_activity_attempts" ("activityid");
