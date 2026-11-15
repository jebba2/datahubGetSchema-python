-- Data set: Rubric Assessment Criteria
-- Source: https://community.d2l.com/brightspace/kb/articles/4535-rubrics-data-sets#rubric-assessment-criteria
CREATE TABLE "rubric_assessment_criteria" (
    "assessmentid" BIGINT NOT NULL,
    "rubricid" BIGINT,
    "score" NUMERIC(19,9),
    "feedback" VARCHAR(4000),
    "isscoreoverridden" BOOLEAN,
    "criterionid" BIGINT NOT NULL,
    "levelachievedid" BIGINT,
    "version" BIGINT,
    PRIMARY KEY ("assessmentid", "criterionid")
);
CREATE INDEX "ix_rubric_assessment_criteria_rubricid" ON "rubric_assessment_criteria" ("rubricid");
CREATE INDEX "ix_rubric_assessment_criteria_criterionid" ON "rubric_assessment_criteria" ("criterionid");
CREATE INDEX "ix_rubric_assessment_criteria_levelachievedid" ON "rubric_assessment_criteria" ("levelachievedid");
