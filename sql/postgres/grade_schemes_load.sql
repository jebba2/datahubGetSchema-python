-- Data set: Grade Schemes (staging table)
-- Source: https://community.d2l.com/brightspace/kb/articles/4527-grades-data-sets#grade-schemes
CREATE TABLE "grade_schemes_load" (
    "gradeschemeid" BIGINT NOT NULL,
    "orgunitid" INTEGER,
    "schemename" VARCHAR(128),
    "deleteddate" TIMESTAMP(6),
    "version" BIGINT,
    PRIMARY KEY ("gradeschemeid")
);
