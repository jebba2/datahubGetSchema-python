-- Data set: Competency Activities
-- Source: https://community.d2l.com/brightspace/kb/articles/4754-competency-data-sets#competency-activities
CREATE TABLE "competency_activities" (
    "activityid" BIGINT NOT NULL,
    "orgunitid" INTEGER,
    "activityname" VARCHAR(256),
    "activitytypeid" INTEGER,
    "assessmenttype" VARCHAR(7),
    "objectlookupid" BIGINT,
    "rubricid" BIGINT,
    "levelid" BIGINT,
    "rubriccriterionid" BIGINT,
    "assessmentthresholdcriteria" VARCHAR(2),
    "assessmentthreshold" NUMERIC(19,9),
    "isautoeval" BOOLEAN,
    "rubricname" VARCHAR(256),
    "rubriclevelrequired" VARCHAR(256),
    "objectid" BIGINT,
    "activitytype" VARCHAR(50),
    "version" BIGINT,
    PRIMARY KEY ("activityid")
);
CREATE INDEX "ix_competency_activities_orgunitid" ON "competency_activities" ("orgunitid");
CREATE INDEX "ix_competency_activities_objectid" ON "competency_activities" ("objectid");
