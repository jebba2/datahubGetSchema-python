-- Data set: Auditor Relationships Log
-- Source: https://community.d2l.com/brightspace/kb/articles/4740-users-data-sets#auditor-relationships-log
CREATE TABLE "auditor_relationships_log" (
    "auditorid" INTEGER NOT NULL,
    "usertoauditid" INTEGER NOT NULL,
    "orgunitid" INTEGER NOT NULL,
    "action" VARCHAR(16),
    "modifiedby" INTEGER,
    "modifieddate" TIMESTAMP(6) NOT NULL,
    PRIMARY KEY ("auditorid", "usertoauditid", "orgunitid", "modifieddate")
);
CREATE INDEX "ix_auditor_relationships_log_usertoauditid" ON "auditor_relationships_log" ("usertoauditid");
CREATE INDEX "ix_auditor_relationships_log_orgunitid" ON "auditor_relationships_log" ("orgunitid");
CREATE INDEX "ix_auditor_relationships_log_modifiedby" ON "auditor_relationships_log" ("modifiedby");
