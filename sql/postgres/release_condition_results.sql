-- Data set: Release Condition Results
-- Source: https://community.d2l.com/brightspace/kb/articles/4533-release-conditions-data-sets#release-condition-results
CREATE TABLE "release_condition_results" (
    "resultid" INTEGER NOT NULL,
    "userid" INTEGER NOT NULL,
    "met" VARCHAR(7),
    "version" BIGINT,
    "deleteddate" TIMESTAMP(6),
    PRIMARY KEY ("resultid", "userid")
);
CREATE INDEX "ix_release_condition_results_userid" ON "release_condition_results" ("userid");
