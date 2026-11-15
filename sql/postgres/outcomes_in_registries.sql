-- Data set: Outcomes in Registries
-- Source: https://community.d2l.com/brightspace/kb/articles/4796-outcomes-data-sets#outcomes-in-registries
CREATE TABLE "outcomes_in_registries" (
    "outcomeid" UUID NOT NULL,
    "registryid" UUID NOT NULL,
    "createddate" TIMESTAMP(6),
    "createdby" INTEGER,
    "lastmodifieddate" TIMESTAMP(6),
    "lastmodifiedby" INTEGER,
    "isdeleted" BOOLEAN,
    PRIMARY KEY ("outcomeid", "registryid")
);
CREATE INDEX "ix_outcomes_in_registries_createdby" ON "outcomes_in_registries" ("createdby");
CREATE INDEX "ix_outcomes_in_registries_lastmodifiedby" ON "outcomes_in_registries" ("lastmodifiedby");
