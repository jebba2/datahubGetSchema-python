-- Data set: Grade Objects Log
-- Source: https://community.d2l.com/brightspace/kb/articles/4527-grades-data-sets#grade-objects-log
CREATE TABLE "grade_objects_log" (
    "logid" BIGINT NOT NULL,
    "name" VARCHAR(50),
    "gradeobjectid" INTEGER,
    "userid" INTEGER,
    "gradesymbolstring" VARCHAR(50),
    "pointsdenominator" NUMERIC(19,9),
    "pointsnumerator" NUMERIC(19,9),
    "weighteddenominator" NUMERIC(19,9),
    "weightednumerator" NUMERIC(19,9),
    "modified" TIMESTAMP(6),
    "modifiedby" INTEGER,
    PRIMARY KEY ("logid")
);
CREATE INDEX "ix_grade_objects_log_gradeobjectid" ON "grade_objects_log" ("gradeobjectid");
CREATE INDEX "ix_grade_objects_log_userid" ON "grade_objects_log" ("userid");
