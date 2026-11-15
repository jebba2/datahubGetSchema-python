-- Data set: Grade Scheme Ranges
-- Source: https://community.d2l.com/brightspace/kb/articles/4527-grades-data-sets#grade-scheme-ranges
CREATE TABLE "grade_scheme_ranges" (
    "gradeschemerangeid" BIGINT NOT NULL,
    "gradeschemeid" BIGINT NOT NULL,
    "symbolstring" VARCHAR(100),
    "assignedvalue" NUMERIC(19,9),
    "rangestart" NUMERIC(19,9),
    "isdeleted" BOOLEAN,
    "version" BIGINT,
    PRIMARY KEY ("gradeschemerangeid", "gradeschemeid")
);
CREATE INDEX "ix_grade_scheme_ranges_gradeschemeid" ON "grade_scheme_ranges" ("gradeschemeid");
