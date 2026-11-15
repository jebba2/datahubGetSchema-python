-- Data set: Outcomes Rubric Alignments (staging table)
-- Source: https://community.d2l.com/brightspace/kb/articles/4796-outcomes-data-sets#outcomes-rubric-alignments
CREATE TABLE "outcomes_rubric_alignments_load" (
    "rubricid" BIGINT NOT NULL,
    "criterionid" BIGINT NOT NULL,
    "outcomeid" UUID NOT NULL,
    "registryid" UUID NOT NULL,
    "createddate" TIMESTAMP(6),
    "createdby" INTEGER,
    "lastmodifieddate" TIMESTAMP(6),
    "lastmodifiedby" INTEGER,
    "isdeleted" BOOLEAN,
    PRIMARY KEY ("rubricid", "criterionid", "outcomeid", "registryid")
);
