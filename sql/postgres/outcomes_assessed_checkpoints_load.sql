-- Data set: Outcomes Assessed Checkpoints (staging table)
-- Source: https://community.d2l.com/brightspace/kb/articles/4796-outcomes-data-sets#outcomes-assessed-checkpoints
CREATE TABLE "outcomes_assessed_checkpoints_load" (
    "checkpointid" UUID NOT NULL,
    "demonstrationid" UUID NOT NULL,
    "feedback" VARCHAR(1000),
    "configdecayrate" INTEGER,
    "configaggregationmethod" INTEGER,
    "configincludedactivities" INTEGER,
    "configmultipleattemptstrategy" INTEGER,
    "configrecentlyassessedactivitycount" INTEGER,
    "configtiebreaker" INTEGER,
    "lastmodifieddate" TIMESTAMP(6),
    "lastmodifiedby" INTEGER,
    "isdeleted" BOOLEAN,
    "hasmetachievementthreshold" BOOLEAN,
    "achievedlevelid" UUID,
    PRIMARY KEY ("checkpointid", "demonstrationid")
);
