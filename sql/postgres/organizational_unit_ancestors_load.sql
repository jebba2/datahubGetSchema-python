-- Data set: Organizational Unit Ancestors (staging table)
-- Source: https://community.d2l.com/brightspace/kb/articles/4529-organizational-units-data-sets#organizational-unit-ancestors
CREATE TABLE "organizational_unit_ancestors_load" (
    "orgunitid" INTEGER NOT NULL,
    "ancestororgunitid" INTEGER NOT NULL,
    "lastmodified" TIMESTAMP(6),
    "datedeleted" TIMESTAMP(6),
    PRIMARY KEY ("orgunitid", "ancestororgunitid")
);
