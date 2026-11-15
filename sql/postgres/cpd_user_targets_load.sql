-- Data set: CPD User Targets (staging table)
-- Source: https://community.d2l.com/brightspace/kb/articles/26020-continuous-professional-development-cpd-data-sets#cpd-user-targets
CREATE TABLE "cpd_user_targets_load" (
    "principalid" INTEGER NOT NULL,
    "categoryid" INTEGER NOT NULL,
    "userid" INTEGER,
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
