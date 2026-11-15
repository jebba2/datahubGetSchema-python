-- Data set: Outcomes Scale Level Definition (staging table)
-- Source: https://community.d2l.com/brightspace/kb/articles/4796-outcomes-data-sets#outcomes-scale-level-definition
CREATE TABLE "outcomes_scale_level_definition_load" (
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
