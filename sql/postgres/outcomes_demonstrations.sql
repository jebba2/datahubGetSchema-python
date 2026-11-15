-- Data set: Outcomes Demonstrations
-- Source: https://community.d2l.com/brightspace/kb/articles/4796-outcomes-data-sets#outcomes-demonstrations
CREATE TABLE "outcomes_demonstrations" (
    "demonstrationid" UUID NOT NULL,
    "explicitlyenteredscalelevelid" UUID,
    "automaticallygeneratedscalelevelid" UUID,
    "alignedobjecttype" INTEGER,
    "alignedobjectid" VARCHAR(1000),
    "outcomeid" UUID,
    "registryid" UUID,
    "ispublished" BOOLEAN,
    "assesseduserid" INTEGER,
    "assesseddate" TIMESTAMP(6),
    "assessoruserid" INTEGER,
    "lastmodifieddate" TIMESTAMP(6),
    "lastmodifiedby" INTEGER,
    "isdeleted" BOOLEAN,
    PRIMARY KEY ("demonstrationid")
);
CREATE INDEX "ix_outcomes_demonstrations_explicitlyenteredscalelevelid" ON "outcomes_demonstrations" ("explicitlyenteredscalelevelid");
CREATE INDEX "ix_outcomes_demonstrations_automaticallygeneratedscalelevelid" ON "outcomes_demonstrations" ("automaticallygeneratedscalelevelid");
CREATE INDEX "ix_outcomes_demonstrations_alignedobjectid" ON "outcomes_demonstrations" ("alignedobjectid");
CREATE INDEX "ix_outcomes_demonstrations_assesseduserid" ON "outcomes_demonstrations" ("assesseduserid");
CREATE INDEX "ix_outcomes_demonstrations_assessoruserid" ON "outcomes_demonstrations" ("assessoruserid");
CREATE INDEX "ix_outcomes_demonstrations_lastmodifiedby" ON "outcomes_demonstrations" ("lastmodifiedby");
