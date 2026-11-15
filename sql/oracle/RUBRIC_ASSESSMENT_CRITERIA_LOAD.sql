-- Data set: Rubric Assessment Criteria (staging table)
-- Source: https://community.d2l.com/brightspace/kb/articles/4535-rubrics-data-sets#rubric-assessment-criteria
CREATE TABLE "RUBRIC_ASSESSMENT_CRITERIA_LOAD" (
    "ASSESSMENTID" NUMBER(19) NOT NULL,
    "RUBRICID" NUMBER(19),
    "SCORE" NUMBER(19,9),
    "FEEDBACK" CLOB,
    "ISSCOREOVERRIDDEN" NUMBER(1),
    "CRITERIONID" NUMBER(19) NOT NULL,
    "LEVELACHIEVEDID" NUMBER(19),
    "VERSION" NUMBER(19),
    PRIMARY KEY ("ASSESSMENTID", "CRITERIONID")
);
