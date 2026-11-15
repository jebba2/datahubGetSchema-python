-- Data set: Rubrics Edit (staging table)
-- Source: https://community.d2l.com/brightspace/kb/articles/4535-rubrics-data-sets#rubrics-edit
CREATE TABLE "rubrics_edit_load" (
    "auditlogid" UUID NOT NULL,
    "rubricid" BIGINT,
    "criterionid" BIGINT,
    "levelid" BIGINT,
    "modifiedby" INTEGER,
    "modifiedobjecttype" INTEGER,
    "criteriagroupid" BIGINT,
    "modifieddate" TIMESTAMP(6),
    "previousvalue" VARCHAR(4000),
    "modifiedvalue" VARCHAR(4000),
    "islocked" BOOLEAN,
    "version" INTEGER,
    PRIMARY KEY ("auditlogid")
);
