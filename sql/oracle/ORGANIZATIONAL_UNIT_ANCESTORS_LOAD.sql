-- Data set: Organizational Unit Ancestors (staging table)
-- Source: https://community.d2l.com/brightspace/kb/articles/4529-organizational-units-data-sets#organizational-unit-ancestors
CREATE TABLE "ORGANIZATIONAL_UNIT_ANCESTORS_LOAD" (
    "ORGUNITID" NUMBER(10) NOT NULL,
    "ANCESTORORGUNITID" NUMBER(10) NOT NULL,
    "LASTMODIFIED" TIMESTAMP(7),
    "DATEDELETED" TIMESTAMP(7),
    PRIMARY KEY ("ORGUNITID", "ANCESTORORGUNITID")
);
