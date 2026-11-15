-- Data set: Competency Objects
-- Source: https://community.d2l.com/brightspace/kb/articles/4754-competency-data-sets#competency-objects
CREATE TABLE "competency_objects" (
    "objectid" BIGINT NOT NULL,
    "orgunitid" INTEGER,
    "name" VARCHAR(256),
    "type" VARCHAR(256),
    "readyforevaluation" BOOLEAN,
    "status" VARCHAR(9),
    "description" VARCHAR(1000),
    "needreevaluation" BOOLEAN,
    "reevaluationifachieved" BOOLEAN,
    "reevaluationifnotachieved" BOOLEAN,
    "additionalidentifier" VARCHAR(512),
    "ishidden" BOOLEAN,
    PRIMARY KEY ("objectid")
);
CREATE INDEX "ix_competency_objects_orgunitid" ON "competency_objects" ("orgunitid");
