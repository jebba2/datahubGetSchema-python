-- Data set: CPD User Records
-- Source: https://community.d2l.com/brightspace/kb/articles/26020-continuous-professional-development-cpd-data-sets#cpd-user-records
CREATE TABLE "cpd_user_records" (
    "recordid" INTEGER NOT NULL,
    "recordname" VARCHAR(256),
    "state" VARCHAR(50),
    "userid" BIGINT,
    "category" BIGINT,
    "method" BIGINT,
    "creditminutes" BIGINT,
    "evidence" VARCHAR(4000),
    "type" VARCHAR(50),
    "grade" NUMERIC(4,3),
    "datecompleted" TIMESTAMP(6),
    "lastmodified" TIMESTAMP(6),
    "datedeleted" TIMESTAMP(6),
    "version" BIGINT,
    PRIMARY KEY ("recordid")
);
CREATE INDEX "ix_cpd_user_records_userid" ON "cpd_user_records" ("userid");
CREATE INDEX "ix_cpd_user_records_category" ON "cpd_user_records" ("category");
CREATE INDEX "ix_cpd_user_records_method" ON "cpd_user_records" ("method");
