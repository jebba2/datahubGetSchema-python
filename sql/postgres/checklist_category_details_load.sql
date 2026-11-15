-- Data set: Checklist Category Details (staging table)
-- Source: https://community.d2l.com/brightspace/kb/articles/4523-checklist-data-sets#checklist-category-details
CREATE TABLE "checklist_category_details_load" (
    "categoryid" BIGINT NOT NULL,
    "checklistid" BIGINT,
    "name" VARCHAR(512),
    "description" VARCHAR(1000),
    "descriptionishtml" BOOLEAN,
    "sortorder" INTEGER,
    "lastmodifiedutc" TIMESTAMP(6),
    "datedeleted" TIMESTAMP(6),
    "deletedby" INTEGER,
    "version" BIGINT,
    PRIMARY KEY ("categoryid")
);
