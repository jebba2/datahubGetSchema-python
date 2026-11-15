-- Data set: Checklist Item Details
-- Source: https://community.d2l.com/brightspace/kb/articles/4523-checklist-data-sets#checklist-item-details
CREATE TABLE "checklist_item_details" (
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
CREATE INDEX "ix_checklist_item_details_categoryid" ON "checklist_item_details" ("categoryid");
CREATE INDEX "ix_checklist_item_details_scheduleid" ON "checklist_item_details" ("scheduleid");
CREATE INDEX "ix_checklist_item_details_deletedby" ON "checklist_item_details" ("deletedby");
