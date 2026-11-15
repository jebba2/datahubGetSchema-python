-- Data set: Activity Exemptions Log
-- Source: https://community.d2l.com/brightspace/kb/articles/4526-exemptions-data-sets#activity-exemptions-log
CREATE TABLE "activity_exemptions_log" (
    "orgunitid" INTEGER,
    "userid" INTEGER,
    "objectid" INTEGER,
    "activityid" VARCHAR(225),
    "logtypename" VARCHAR(50),
    "lastmodifiedutc" TIMESTAMP(6),
    "lastmodifiedby" INTEGER,
    "activityexemptionslogid" BIGINT NOT NULL,
    "toolid" INTEGER,
    PRIMARY KEY ("activityexemptionslogid")
);
CREATE INDEX "ix_activity_exemptions_log_orgunitid" ON "activity_exemptions_log" ("orgunitid");
CREATE INDEX "ix_activity_exemptions_log_userid" ON "activity_exemptions_log" ("userid");
CREATE INDEX "ix_activity_exemptions_log_lastmodifiedby" ON "activity_exemptions_log" ("lastmodifiedby");
CREATE INDEX "ix_activity_exemptions_log_toolid" ON "activity_exemptions_log" ("toolid");
