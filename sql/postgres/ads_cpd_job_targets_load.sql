-- Data set: ADS CPD Job Targets (staging table)
-- Source: https://community.d2l.com/brightspace/kb/articles/4539-list-of-advanced-data-sets#cpd-job-targets
CREATE TABLE "ads_cpd_job_targets_load" (
    "jobtitle" TEXT,
    "startdate" TEXT,
    "subjectid" TEXT,
    "subjectname" TEXT,
    "structuredminutes" TEXT,
    "unstructuredminutes" TEXT,
    "structuredrecordcount" TEXT,
    "unstructuredrecordcount" TEXT
);
