-- Data set: CPD Job Targets (staging table)
-- Source: https://community.d2l.com/brightspace/kb/articles/26020-continuous-professional-development-cpd-data-sets#cpd-job-targets
CREATE TABLE "cpd_job_targets_load" (
    "principalid" INTEGER NOT NULL,
    "categoryid" INTEGER NOT NULL,
    "jobtitle" VARCHAR(256),
    "structuredminutes" INTEGER,
    "unstructuredminutes" INTEGER,
    "structuredrecordcount" INTEGER,
    "unstructuredrecordcount" INTEGER,
    "startdate" TIMESTAMP(6),
    "datedeleted" TIMESTAMP(6),
    "lastmodified" TIMESTAMP(6),
    "version" BIGINT,
    PRIMARY KEY ("principalid", "categoryid")
);
