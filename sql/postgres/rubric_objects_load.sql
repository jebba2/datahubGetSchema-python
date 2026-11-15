-- Data set: Rubric Objects (staging table)
-- Source: https://community.d2l.com/brightspace/kb/articles/4535-rubrics-data-sets#rubric-objects
CREATE TABLE "rubric_objects_load" (
    "rubricid" BIGINT NOT NULL,
    "name" VARCHAR(256),
    "rubricstatus" VARCHAR(256),
    "description" VARCHAR(1000),
    "rubrictype" VARCHAR(256),
    "scoringmethods" VARCHAR(256),
    "isscorevisible" BOOLEAN,
    "orgunitid" INTEGER,
    "isshared" BOOLEAN,
    "isdeleted" BOOLEAN,
    PRIMARY KEY ("rubricid")
);
