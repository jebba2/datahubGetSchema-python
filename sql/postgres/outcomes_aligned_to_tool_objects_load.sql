-- Data set: Outcomes Aligned to Tool Objects (staging table)
-- Source: https://community.d2l.com/brightspace/kb/articles/4796-outcomes-data-sets#outcomes-aligned-to-tool-objects
CREATE TABLE "outcomes_aligned_to_tool_objects_load" (
    "objecttype" INTEGER NOT NULL,
    "objectid" VARCHAR(255) NOT NULL,
    "outcomeid" UUID NOT NULL,
    "registryid" UUID NOT NULL,
    "createddate" TIMESTAMP(6),
    "createdby" INTEGER,
    "lastmodifieddate" TIMESTAMP(6),
    "lastmodifiedby" INTEGER,
    "isdeleted" BOOLEAN,
    "aiutilization" INTEGER,
    PRIMARY KEY ("objecttype", "objectid", "outcomeid", "registryid")
);
