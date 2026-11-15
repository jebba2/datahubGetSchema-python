-- Data set: Release Condition Results
-- Source: https://community.d2l.com/brightspace/kb/articles/4533-release-conditions-data-sets#release-condition-results
CREATE TABLE "RELEASE_CONDITION_RESULTS" (
    "RESULTID" NUMBER(10) NOT NULL,
    "USERID" NUMBER(10) NOT NULL,
    "MET" VARCHAR2(7 CHAR),
    "VERSION" NUMBER(19),
    "DELETEDDATE" TIMESTAMP(7),
    PRIMARY KEY ("RESULTID", "USERID")
);
CREATE INDEX "IX_RELEASE_CONDITION_RESULTS_USERID" ON "RELEASE_CONDITION_RESULTS" ("USERID");
