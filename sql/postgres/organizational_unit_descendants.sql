-- Data set: Organizational Unit Descendants
-- Source: https://community.d2l.com/brightspace/kb/articles/4529-organizational-units-data-sets#organizational-unit-descendants
CREATE TABLE "organizational_unit_descendants" (
    "orgunitid" INTEGER NOT NULL,
    "descendantorgunitid" INTEGER NOT NULL,
    "lastmodified" TIMESTAMP(6),
    "datedeleted" TIMESTAMP(6),
    PRIMARY KEY ("orgunitid", "descendantorgunitid")
);
CREATE INDEX "ix_organizational_unit_descendants_descendantorgunitid" ON "organizational_unit_descendants" ("descendantorgunitid");
