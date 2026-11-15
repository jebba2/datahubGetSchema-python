-- Data set: Competency Structure
-- Source: https://community.d2l.com/brightspace/kb/articles/4754-competency-data-sets#competency-structure
CREATE TABLE "competency_structure" (
    "objectid" BIGINT NOT NULL,
    "parentobjectid" BIGINT NOT NULL,
    "baseobjectid" BIGINT NOT NULL,
    "depth" INTEGER,
    "entrytime" INTEGER NOT NULL,
    PRIMARY KEY ("objectid", "parentobjectid", "baseobjectid", "entrytime")
);
CREATE INDEX "ix_competency_structure_parentobjectid" ON "competency_structure" ("parentobjectid");
CREATE INDEX "ix_competency_structure_baseobjectid" ON "competency_structure" ("baseobjectid");
