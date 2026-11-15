-- Data set: System Access Summary
-- Source: https://community.d2l.com/brightspace/kb/articles/4537-sessions-and-system-access-data-sets#system-access-summary
CREATE TABLE "SYSTEM_ACCESS_SUMMARY" (
    "USERID" NUMBER(10) NOT NULL,
    "IMPERSONATINGUSERID" NUMBER(10),
    "LASTSYSTEMACCESS" TIMESTAMP(7),
    "SOURCE" VARCHAR2(20 CHAR),
    PRIMARY KEY ("USERID")
);
CREATE INDEX "IX_SYSTEM_ACCESS_SUMMARY_IMPERSONATINGUSERID" ON "SYSTEM_ACCESS_SUMMARY" ("IMPERSONATINGUSERID");
