-- Data set: SCORM Activities
-- Source: https://community.d2l.com/brightspace/kb/articles/4536-scorm-data-sets#scorm-activities
CREATE TABLE "scorm_activities" (
    "activityid" UUID NOT NULL,
    "scormobjectid" UUID,
    "parentactivityid" UUID,
    "numchildren" INTEGER,
    "internalid" VARCHAR(255),
    "title" VARCHAR(200),
    "completionthreshold" DOUBLE PRECISION,
    "passingscore" DOUBLE PRECISION,
    "passingscoreused" BOOLEAN,
    "scoremin" DOUBLE PRECISION,
    "scoremax" DOUBLE PRECISION,
    "lastmodified" TIMESTAMP(6),
    PRIMARY KEY ("activityid")
);
CREATE INDEX "ix_scorm_activities_scormobjectid" ON "scorm_activities" ("scormobjectid");
CREATE INDEX "ix_scorm_activities_parentactivityid" ON "scorm_activities" ("parentactivityid");
