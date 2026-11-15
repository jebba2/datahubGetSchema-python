-- Data set: ADS CPD User Targets (staging table)
-- Source: https://community.d2l.com/brightspace/kb/articles/4539-list-of-advanced-data-sets#cpd-user-targets
CREATE TABLE "ads_cpd_user_targets_load" (
    "userid" TEXT,
    "startdate" TEXT,
    "subjectid" TEXT,
    "subjectname" TEXT,
    "structuredminutes" TEXT,
    "unstructuredminutes" TEXT,
    "structuredrecordcount" TEXT,
    "unstructuredrecordcount" TEXT
);
