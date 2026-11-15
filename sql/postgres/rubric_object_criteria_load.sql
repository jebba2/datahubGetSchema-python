-- Data set: Rubric Object Criteria (staging table)
-- Source: https://community.d2l.com/brightspace/kb/articles/4535-rubrics-data-sets#rubric-object-criteria
CREATE TABLE "rubric_object_criteria_load" (
    "rubricid" BIGINT,
    "criterionid" BIGINT NOT NULL,
    "name" VARCHAR(500),
    "sortorder" INTEGER,
    "criteriagroupid" BIGINT,
    "groupname" VARCHAR(256),
    "groupsortorder" INTEGER,
    "levelsetid" BIGINT,
    "isdeleted" BOOLEAN,
    PRIMARY KEY ("criterionid")
);
