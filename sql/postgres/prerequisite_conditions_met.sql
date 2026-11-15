-- Data set: PreRequisite Conditions Met
-- Source: https://community.d2l.com/brightspace/kb/articles/4533-release-conditions-data-sets#prerequisite-conditions-met
CREATE TABLE "prerequisite_conditions_met" (
    "prerequisiteid" INTEGER NOT NULL,
    "userid" INTEGER NOT NULL,
    "datemet" TIMESTAMP(6),
    "action" VARCHAR(7),
    "lastmodified" TIMESTAMP(6),
    PRIMARY KEY ("prerequisiteid", "userid")
);
CREATE INDEX "ix_prerequisite_conditions_met_userid" ON "prerequisite_conditions_met" ("userid");
