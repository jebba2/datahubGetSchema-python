-- Data set: Rubric Object Criteria
-- Source: https://community.d2l.com/brightspace/kb/articles/4535-rubrics-data-sets#rubric-object-criteria
CREATE TABLE "rubric_object_criteria" (
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
CREATE INDEX "ix_rubric_object_criteria_rubricid" ON "rubric_object_criteria" ("rubricid");
CREATE INDEX "ix_rubric_object_criteria_levelsetid" ON "rubric_object_criteria" ("levelsetid");
