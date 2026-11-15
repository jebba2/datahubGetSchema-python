-- Data set: Organizational Units (staging table)
-- Source: https://community.d2l.com/brightspace/kb/articles/4529-organizational-units-data-sets#organizational-units
CREATE TABLE "organizational_units_load" (
    "orgunitid" INTEGER NOT NULL,
    "organization" VARCHAR(50),
    "type" VARCHAR(50),
    "name" VARCHAR(128),
    "code" VARCHAR(50),
    "startdate" TIMESTAMP(6),
    "enddate" TIMESTAMP(6),
    "isactive" BOOLEAN,
    "createddate" TIMESTAMP(6),
    "isdeleted" BOOLEAN,
    "deleteddate" TIMESTAMP(6),
    "recycleddate" TIMESTAMP(6),
    "version" BIGINT,
    "orgunittypeid" INTEGER,
    PRIMARY KEY ("orgunitid")
);
