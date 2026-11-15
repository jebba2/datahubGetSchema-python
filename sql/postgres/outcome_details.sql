-- Data set: Outcome Details
-- Source: https://community.d2l.com/brightspace/kb/articles/4796-outcomes-data-sets#outcome-details
CREATE TABLE "outcome_details" (
    "outcomeid" UUID NOT NULL,
    "outcomedefinitionsource" VARCHAR(1000),
    "outcomedefinitionid" VARCHAR(128),
    "parentoutcomeid" UUID,
    "description" VARCHAR(1000),
    "notation" VARCHAR(1000),
    "createddate" TIMESTAMP(6),
    "createdby" INTEGER,
    "lastmodifieddate" TIMESTAMP(6),
    "lastmodifiedby" INTEGER,
    "isdeleted" BOOLEAN,
    PRIMARY KEY ("outcomeid")
);
CREATE INDEX "ix_outcome_details_createdby" ON "outcome_details" ("createdby");
CREATE INDEX "ix_outcome_details_lastmodifiedby" ON "outcome_details" ("lastmodifiedby");
