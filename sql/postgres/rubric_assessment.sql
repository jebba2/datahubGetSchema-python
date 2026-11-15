-- Data set: Rubric Assessment
-- Source: https://community.d2l.com/brightspace/kb/articles/4535-rubrics-data-sets#rubric-assessment
CREATE TABLE "rubric_assessment" (
    "rubricid" BIGINT,
    "orgunitid" INTEGER,
    "userid" INTEGER NOT NULL,
    "score" NUMERIC(36,2),
    "assessedbyuserid" INTEGER,
    "assessmentdate" TIMESTAMP(6),
    "iscompleted" BOOLEAN,
    "activitytype" VARCHAR(50),
    "activityobjectid" BIGINT,
    "datecreated" TIMESTAMP(6),
    "assessmentid" BIGINT NOT NULL,
    "levelachievedid" BIGINT,
    "activityid" BIGINT NOT NULL,
    "isdeleted" BOOLEAN,
    "version" BIGINT,
    PRIMARY KEY ("userid", "assessmentid", "activityid")
);
CREATE INDEX "ix_rubric_assessment_rubricid" ON "rubric_assessment" ("rubricid");
CREATE INDEX "ix_rubric_assessment_orgunitid" ON "rubric_assessment" ("orgunitid");
CREATE INDEX "ix_rubric_assessment_assessedbyuserid" ON "rubric_assessment" ("assessedbyuserid");
CREATE INDEX "ix_rubric_assessment_activityobjectid" ON "rubric_assessment" ("activityobjectid");
CREATE INDEX "ix_rubric_assessment_levelachievedid" ON "rubric_assessment" ("levelachievedid");
