-- Data set: Competency Activity Results
-- Source: https://community.d2l.com/brightspace/kb/articles/4754-competency-data-sets#competency-activity-results
CREATE TABLE "competency_activity_results" (
    "activityid" BIGINT NOT NULL,
    "orgunitid" INTEGER NOT NULL,
    "userid" INTEGER NOT NULL,
    "learningobjectid" BIGINT NOT NULL,
    "isachieved" BOOLEAN,
    "percentachieved" NUMERIC(19,9),
    "rubricscore" NUMERIC(19,9),
    "rubriclevelachieved" VARCHAR(256),
    "rubricid" BIGINT,
    "rubriccriterionid" BIGINT,
    "achieveddate" TIMESTAMP(6),
    "version" BIGINT,
    PRIMARY KEY ("activityid", "orgunitid", "userid", "learningobjectid")
);
CREATE INDEX "ix_competency_activity_results_orgunitid" ON "competency_activity_results" ("orgunitid");
CREATE INDEX "ix_competency_activity_results_userid" ON "competency_activity_results" ("userid");
CREATE INDEX "ix_competency_activity_results_learningobjectid" ON "competency_activity_results" ("learningobjectid");
