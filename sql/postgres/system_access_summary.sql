-- Data set: System Access Summary
-- Source: https://community.d2l.com/brightspace/kb/articles/4537-sessions-and-system-access-data-sets#system-access-summary
CREATE TABLE "system_access_summary" (
    "userid" INTEGER NOT NULL,
    "impersonatinguserid" INTEGER,
    "lastsystemaccess" TIMESTAMP(6),
    "source" VARCHAR(20),
    PRIMARY KEY ("userid")
);
CREATE INDEX "ix_system_access_summary_impersonatinguserid" ON "system_access_summary" ("impersonatinguserid");
