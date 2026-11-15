-- Data set: Checklist Objects
-- Source: https://community.d2l.com/brightspace/kb/articles/4523-checklist-data-sets#checklist-objects
CREATE TABLE "checklist_objects" (
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
CREATE INDEX "ix_checklist_objects_orgunitid" ON "checklist_objects" ("orgunitid");
CREATE INDEX "ix_checklist_objects_shareduserid" ON "checklist_objects" ("shareduserid");
CREATE INDEX "ix_checklist_objects_resultid" ON "checklist_objects" ("resultid");
CREATE INDEX "ix_checklist_objects_deletedby" ON "checklist_objects" ("deletedby");
