-- Data set: Rubric Assessment (staging table)
-- Source: https://community.d2l.com/brightspace/kb/articles/4535-rubrics-data-sets#rubric-assessment
CREATE TABLE "rubric_assessment_load" (
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
