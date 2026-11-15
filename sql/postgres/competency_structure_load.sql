-- Data set: Competency Structure (staging table)
-- Source: https://community.d2l.com/brightspace/kb/articles/4754-competency-data-sets#competency-structure
CREATE TABLE "competency_structure_load" (
    "objectid" BIGINT NOT NULL,
    "parentobjectid" BIGINT NOT NULL,
    "baseobjectid" BIGINT NOT NULL,
    "depth" INTEGER,
    "entrytime" INTEGER NOT NULL,
    PRIMARY KEY ("objectid", "parentobjectid", "baseobjectid", "entrytime")
);
