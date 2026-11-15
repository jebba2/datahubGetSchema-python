-- Data set: Activity Exemptions Log (staging table)
-- Source: https://community.d2l.com/brightspace/kb/articles/4526-exemptions-data-sets#activity-exemptions-log
CREATE TABLE "activity_exemptions_log_load" (
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
