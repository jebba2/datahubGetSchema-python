-- Data set: Outcomes Set Org (staging table)
-- Source: https://community.d2l.com/brightspace/kb/articles/4796-outcomes-data-sets#outcomes-set-org
CREATE TABLE "outcomes_set_org_load" (
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
