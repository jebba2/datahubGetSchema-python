-- Data set: Organizational Unit Recent Access (staging table)
-- Source: https://community.d2l.com/brightspace/kb/articles/4529-organizational-units-data-sets#organizational-unit-recent-access
CREATE TABLE "ORGANIZATIONAL_UNIT_RECENT_ACCESS_LOAD" (
    "ORGUNITID" NUMBER(10) NOT NULL,
    "USERID" NUMBER(10) NOT NULL,
    "LASTACCESSEDDATE" TIMESTAMP(7),
    PRIMARY KEY ("ORGUNITID", "USERID")
);
