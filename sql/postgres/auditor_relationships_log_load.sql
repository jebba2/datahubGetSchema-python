-- Data set: Auditor Relationships Log (staging table)
-- Source: https://community.d2l.com/brightspace/kb/articles/4740-users-data-sets#auditor-relationships-log
CREATE TABLE "auditor_relationships_log_load" (
    "auditorid" INTEGER NOT NULL,
    "usertoauditid" INTEGER NOT NULL,
    "orgunitid" INTEGER NOT NULL,
    "action" VARCHAR(16),
    "modifiedby" INTEGER,
    "modifieddate" TIMESTAMP(6) NOT NULL,
    PRIMARY KEY ("auditorid", "usertoauditid", "orgunitid", "modifieddate")
);
