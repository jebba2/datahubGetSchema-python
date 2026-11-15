-- Data set: Outcomes Demonstrations (staging table)
-- Source: https://community.d2l.com/brightspace/kb/articles/4796-outcomes-data-sets#outcomes-demonstrations
CREATE TABLE "outcomes_demonstrations_load" (
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
