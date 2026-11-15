-- Data set: Outcomes Scale Level Definition
-- Source: https://community.d2l.com/brightspace/kb/articles/4796-outcomes-data-sets#outcomes-scale-level-definition
CREATE TABLE "outcomes_scale_level_definition" (
    "scalelevelid" UUID NOT NULL,
    "scaleid" UUID,
    "name" VARCHAR(1000),
    "sortorder" INTEGER,
    "percentagerangestart" INTEGER,
    "rgb" VARCHAR(40),
    "createddate" TIMESTAMP(6),
    "createdby" INTEGER,
    "lastmodifieddate" TIMESTAMP(6),
    "lastmodifiedby" INTEGER,
    PRIMARY KEY ("scalelevelid")
);
CREATE INDEX "ix_outcomes_scale_level_definition_scaleid" ON "outcomes_scale_level_definition" ("scaleid");
CREATE INDEX "ix_outcomes_scale_level_definition_createdby" ON "outcomes_scale_level_definition" ("createdby");
CREATE INDEX "ix_outcomes_scale_level_definition_lastmodifiedby" ON "outcomes_scale_level_definition" ("lastmodifiedby");
