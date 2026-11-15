-- Data set: Grade Schemes
-- Source: https://community.d2l.com/brightspace/kb/articles/4527-grades-data-sets#grade-schemes
CREATE TABLE "grade_schemes" (
    "gradeschemeid" BIGINT NOT NULL,
    "orgunitid" INTEGER,
    "schemename" VARCHAR(128),
    "deleteddate" TIMESTAMP(6),
    "version" BIGINT,
    PRIMARY KEY ("gradeschemeid")
);
CREATE INDEX "ix_grade_schemes_orgunitid" ON "grade_schemes" ("orgunitid");
