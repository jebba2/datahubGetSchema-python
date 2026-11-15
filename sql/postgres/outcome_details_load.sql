-- Data set: Outcome Details (staging table)
-- Source: https://community.d2l.com/brightspace/kb/articles/4796-outcomes-data-sets#outcome-details
CREATE TABLE "outcome_details_load" (
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
