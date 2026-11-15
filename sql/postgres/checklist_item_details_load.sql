-- Data set: Checklist Item Details (staging table)
-- Source: https://community.d2l.com/brightspace/kb/articles/4523-checklist-data-sets#checklist-item-details
CREATE TABLE "checklist_item_details_load" (
    "itemid" BIGINT NOT NULL,
    "categoryid" BIGINT,
    "name" VARCHAR(512),
    "description" VARCHAR(1000),
    "descriptionishtml" BOOLEAN,
    "duedate" TIMESTAMP(6),
    "scheduleid" INTEGER,
    "sortorder" INTEGER,
    "isautochecked" BOOLEAN,
    "lastmodifiedutc" TIMESTAMP(6),
    "datedeleted" TIMESTAMP(6),
    "deletedby" INTEGER,
    "version" BIGINT,
    PRIMARY KEY ("itemid")
);
