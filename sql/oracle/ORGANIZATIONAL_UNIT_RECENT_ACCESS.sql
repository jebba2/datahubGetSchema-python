-- Data set: Organizational Unit Recent Access
-- Source: https://community.d2l.com/brightspace/kb/articles/4529-organizational-units-data-sets#organizational-unit-recent-access
CREATE TABLE "ORGANIZATIONAL_UNIT_RECENT_ACCESS" (
    "ORGUNITID" NUMBER(10) NOT NULL,
    "USERID" NUMBER(10) NOT NULL,
    "LASTACCESSEDDATE" TIMESTAMP(7),
    PRIMARY KEY ("ORGUNITID", "USERID")
);
CREATE INDEX "IX_ORGANIZATIONAL_UNIT_RECENT_ACCESS_USERID" ON "ORGANIZATIONAL_UNIT_RECENT_ACCESS" ("USERID");
