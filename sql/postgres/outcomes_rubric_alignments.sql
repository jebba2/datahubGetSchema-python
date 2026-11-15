-- Data set: Outcomes Rubric Alignments
-- Source: https://community.d2l.com/brightspace/kb/articles/4796-outcomes-data-sets#outcomes-rubric-alignments
CREATE TABLE "outcomes_rubric_alignments" (
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
CREATE INDEX "ix_outcomes_rubric_alignments_criterionid" ON "outcomes_rubric_alignments" ("criterionid");
CREATE INDEX "ix_outcomes_rubric_alignments_outcomeid" ON "outcomes_rubric_alignments" ("outcomeid");
CREATE INDEX "ix_outcomes_rubric_alignments_registryid" ON "outcomes_rubric_alignments" ("registryid");
CREATE INDEX "ix_outcomes_rubric_alignments_createdby" ON "outcomes_rubric_alignments" ("createdby");
CREATE INDEX "ix_outcomes_rubric_alignments_lastmodifiedby" ON "outcomes_rubric_alignments" ("lastmodifiedby");
