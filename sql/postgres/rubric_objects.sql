-- Data set: Rubric Objects
-- Source: https://community.d2l.com/brightspace/kb/articles/4535-rubrics-data-sets#rubric-objects
CREATE TABLE "rubric_objects" (
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
CREATE INDEX "ix_rubric_objects_orgunitid" ON "rubric_objects" ("orgunitid");
