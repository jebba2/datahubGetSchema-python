-- Data set: LTI Link Migration Audit (staging table)
-- Source: https://community.d2l.com/brightspace/kb/articles/4727-lti-data-sets#lti-link-migration-audit
CREATE TABLE "lti_link_migration_audit_load" (
    "ltimigrationid" UUID NOT NULL,
    "userid" BIGINT,
    "migrationdate" TIMESTAMP(6),
    "orgunitid" BIGINT,
    "linkid" BIGINT,
    "linkurl" VARCHAR(2000),
    "linkname" VARCHAR(200),
    "clientid" VARCHAR(255),
    "registrationdomain" VARCHAR(2083),
    "deploymentid" UUID,
    "jobid" BIGINT,
    "status" SMALLINT,
    "failurecode" SMALLINT,
    "migrationtype" SMALLINT,
    "legacyurl" VARCHAR(2083),
    PRIMARY KEY ("ltimigrationid")
);
