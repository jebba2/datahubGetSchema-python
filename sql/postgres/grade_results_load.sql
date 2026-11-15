-- Data set: Grade Results (staging table)
-- Source: https://community.d2l.com/brightspace/kb/articles/4527-grades-data-sets#grade-results
CREATE TABLE "grade_results_load" (
    "gradeobjectid" INTEGER NOT NULL,
    "orgunitid" INTEGER NOT NULL,
    "userid" INTEGER NOT NULL,
    "pointsnumerator" NUMERIC(19,9),
    "pointsdenominator" NUMERIC(19,9),
    "weightednumerator" NUMERIC(19,9),
    "weighteddenominator" NUMERIC(19,9),
    "isreleased" BOOLEAN,
    "isdropped" BOOLEAN,
    "lastmodified" TIMESTAMP(6),
    "lastmodifiedby" INTEGER,
    "comments" VARCHAR(1000),
    "privatecomments" VARCHAR(1000),
    "gradetext" VARCHAR(50),
    "gradereleaseddate" TIMESTAMP(6),
    "version" BIGINT,
    "isdeleted" BOOLEAN,
    PRIMARY KEY ("gradeobjectid", "orgunitid", "userid")
);
