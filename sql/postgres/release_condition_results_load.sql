-- Data set: Release Condition Results (staging table)
-- Source: https://community.d2l.com/brightspace/kb/articles/4533-release-conditions-data-sets#release-condition-results
CREATE TABLE "release_condition_results_load" (
    "resultid" INTEGER NOT NULL,
    "userid" INTEGER NOT NULL,
    "met" VARCHAR(7),
    "version" BIGINT,
    "deleteddate" TIMESTAMP(6),
    PRIMARY KEY ("resultid", "userid")
);
