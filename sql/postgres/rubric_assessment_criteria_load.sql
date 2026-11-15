-- Data set: Rubric Assessment Criteria (staging table)
-- Source: https://community.d2l.com/brightspace/kb/articles/4535-rubrics-data-sets#rubric-assessment-criteria
CREATE TABLE "rubric_assessment_criteria_load" (
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
