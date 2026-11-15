-- Data set: Outcomes Set Org
-- Source: https://community.d2l.com/brightspace/kb/articles/4796-outcomes-data-sets#outcomes-set-org
CREATE TABLE "outcomes_set_org" (
    "outcomesetid" BIGINT NOT NULL,
    "outcomesetname" VARCHAR(256),
    "registryid" UUID,
    "createddate" TIMESTAMP(6),
    "createdby" INTEGER,
    "lastmodifieddate" TIMESTAMP(6),
    "lastmodifiedby" INTEGER,
    "isdeleted" BOOLEAN,
    "scaleid" UUID,
    PRIMARY KEY ("outcomesetid")
);
CREATE INDEX "ix_outcomes_set_org_createdby" ON "outcomes_set_org" ("createdby");
CREATE INDEX "ix_outcomes_set_org_lastmodifiedby" ON "outcomes_set_org" ("lastmodifiedby");
CREATE INDEX "ix_outcomes_set_org_scaleid" ON "outcomes_set_org" ("scaleid");
