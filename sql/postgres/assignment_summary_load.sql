-- Data set: Assignment Summary (staging table)
-- Source: https://community.d2l.com/brightspace/kb/articles/4767-assignments-data-sets#assignment-summary
CREATE TABLE "assignment_summary_load" (
    "dropboxid" BIGINT NOT NULL,
    "orgunitid" INTEGER,
    "name" VARCHAR(128),
    "category" VARCHAR(128),
    "type" VARCHAR(10),
    "gradeitemid" BIGINT,
    "possiblescore" NUMERIC(19,9),
    "startdate" TIMESTAMP(6),
    "enddate" TIMESTAMP(6),
    "duedate" TIMESTAMP(6),
    "isrestricted" BOOLEAN,
    "isdeleted" BOOLEAN,
    "turnitinenabled" BOOLEAN,
    "ishidden" BOOLEAN,
    "sortorder" INTEGER,
    "submissiontype" VARCHAR(18),
    "completiontype" VARCHAR(27),
    "resultid" INTEGER,
    "categoryid" BIGINT,
    "version" BIGINT,
    "startdateavailabilitytype" SMALLINT,
    "enddateavailabilitytype" SMALLINT,
    "aiutilization" INTEGER,
    "instructions" VARCHAR(10000),
    PRIMARY KEY ("dropboxid")
);
