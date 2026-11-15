-- Data set: Organizational Unit Recent Access
-- Source: https://community.d2l.com/brightspace/kb/articles/4529-organizational-units-data-sets#organizational-unit-recent-access
CREATE TABLE "organizational_unit_recent_access" (
    "orgunitid" INTEGER NOT NULL,
    "userid" INTEGER NOT NULL,
    "lastaccesseddate" TIMESTAMP(6),
    PRIMARY KEY ("orgunitid", "userid")
);
CREATE INDEX "ix_organizational_unit_recent_access_userid" ON "organizational_unit_recent_access" ("userid");
