-- Data set: Grade Scheme Ranges (staging table)
-- Source: https://community.d2l.com/brightspace/kb/articles/4527-grades-data-sets#grade-scheme-ranges
CREATE TABLE "grade_scheme_ranges_load" (
    "gradeschemerangeid" BIGINT NOT NULL,
    "gradeschemeid" BIGINT NOT NULL,
    "symbolstring" VARCHAR(100),
    "assignedvalue" NUMERIC(19,9),
    "rangestart" NUMERIC(19,9),
    "isdeleted" BOOLEAN,
    "version" BIGINT,
    PRIMARY KEY ("gradeschemerangeid", "gradeschemeid")
);
