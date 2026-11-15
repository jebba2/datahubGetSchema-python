-- Data set: Rubric Criteria Levels (staging table)
-- Source: https://community.d2l.com/brightspace/kb/articles/4535-rubrics-data-sets#rubric-criteria-levels
CREATE TABLE "rubric_criteria_levels_load" (
    "rubricid" BIGINT NOT NULL,
    "criterionid" BIGINT NOT NULL,
    "description" VARCHAR(1000),
    "feedback" VARCHAR(1000),
    "value" NUMERIC(19,9),
    "levelid" BIGINT NOT NULL,
    "isdeleted" BOOLEAN,
    "version" BIGINT,
    PRIMARY KEY ("rubricid", "criterionid", "levelid")
);
