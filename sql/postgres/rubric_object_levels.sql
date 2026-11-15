-- Data set: Rubric Object Levels
-- Source: https://community.d2l.com/brightspace/kb/articles/4535-rubrics-data-sets#rubric-object-levels
CREATE TABLE "rubric_object_levels" (
    "rubricid" BIGINT,
    "levelid" BIGINT NOT NULL,
    "name" VARCHAR(256),
    "description" VARCHAR(1000),
    "feedback" VARCHAR(1000),
    "value" NUMERIC(19,9),
    "rangestartvalue" NUMERIC(19,9),
    "sortorder" INTEGER,
    "levelsetid" BIGINT,
    "isdeleted" BOOLEAN,
    PRIMARY KEY ("levelid")
);
CREATE INDEX "ix_rubric_object_levels_rubricid" ON "rubric_object_levels" ("rubricid");
CREATE INDEX "ix_rubric_object_levels_levelsetid" ON "rubric_object_levels" ("levelsetid");
