-- Data set: CPD User Targets
-- Source: https://community.d2l.com/brightspace/kb/articles/26020-continuous-professional-development-cpd-data-sets#cpd-user-targets
CREATE TABLE "cpd_user_targets" (
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
CREATE INDEX "ix_cpd_user_targets_categoryid" ON "cpd_user_targets" ("categoryid");
CREATE INDEX "ix_cpd_user_targets_userid" ON "cpd_user_targets" ("userid");
