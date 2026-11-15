-- Data set: Outcomes Scale Definition (staging table)
-- Source: https://community.d2l.com/brightspace/kb/articles/4796-outcomes-data-sets#outcomes-scale-definition
CREATE TABLE "outcomes_scale_definition_load" (
    "scaleid" UUID NOT NULL,
    "name" VARCHAR(1000),
    "isdefault" BOOLEAN,
    "usepercentages" BOOLEAN,
    "createddate" TIMESTAMP(6),
    "createdby" INTEGER,
    "lastmodifieddate" TIMESTAMP(6),
    "lastmodifiedby" INTEGER,
    "isdeleted" BOOLEAN,
    "achievementthreshold" UUID,
    PRIMARY KEY ("scaleid")
);
