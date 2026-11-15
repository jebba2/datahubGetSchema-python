-- Data set: Rubric Object Levels (staging table)
-- Source: https://community.d2l.com/brightspace/kb/articles/4535-rubrics-data-sets#rubric-object-levels
CREATE TABLE "rubric_object_levels_load" (
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
