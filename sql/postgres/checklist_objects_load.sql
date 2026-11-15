-- Data set: Checklist Objects (staging table)
-- Source: https://community.d2l.com/brightspace/kb/articles/4523-checklist-data-sets#checklist-objects
CREATE TABLE "checklist_objects_load" (
    "checklistid" BIGINT NOT NULL,
    "orgunitid" INTEGER,
    "name" VARCHAR(512),
    "description" VARCHAR(1000),
    "descriptionishtml" BOOLEAN,
    "shareduserid" INTEGER,
    "displayinnewwindow" BOOLEAN,
    "sortorder" INTEGER,
    "version" BIGINT,
    "resultid" INTEGER,
    "datedeleted" TIMESTAMP(6),
    "deletedby" INTEGER,
    PRIMARY KEY ("checklistid")
);
