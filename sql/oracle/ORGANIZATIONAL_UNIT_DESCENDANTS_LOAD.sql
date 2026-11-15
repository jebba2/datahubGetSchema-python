-- Data set: Organizational Unit Descendants (staging table)
-- Source: https://community.d2l.com/brightspace/kb/articles/4529-organizational-units-data-sets#organizational-unit-descendants
CREATE TABLE "ORGANIZATIONAL_UNIT_DESCENDANTS_LOAD" (
    "ORGUNITID" NUMBER(10) NOT NULL,
    "DESCENDANTORGUNITID" NUMBER(10) NOT NULL,
    "LASTMODIFIED" TIMESTAMP(7),
    "DATEDELETED" TIMESTAMP(7),
    PRIMARY KEY ("ORGUNITID", "DESCENDANTORGUNITID")
);
