-- Data set: System Access Summary (staging table)
-- Source: https://community.d2l.com/brightspace/kb/articles/4537-sessions-and-system-access-data-sets#system-access-summary
CREATE TABLE "system_access_summary_load" (
    "userid" INTEGER NOT NULL,
    "impersonatinguserid" INTEGER,
    "lastsystemaccess" TIMESTAMP(6),
    "source" VARCHAR(20),
    PRIMARY KEY ("userid")
);
