-- Data set: Organizational Unit Parents
-- Source: https://community.d2l.com/brightspace/kb/articles/4529-organizational-units-data-sets#organizational-unit-parents
CREATE TABLE "organizational_unit_parents" (
    "orgunitid" INTEGER NOT NULL,
    "parentorgunitid" INTEGER NOT NULL,
    "rowversion" BIGINT,
    "datedeleted" TIMESTAMP(6),
    PRIMARY KEY ("orgunitid", "parentorgunitid")
);
CREATE INDEX "ix_organizational_unit_parents_parentorgunitid" ON "organizational_unit_parents" ("parentorgunitid");
