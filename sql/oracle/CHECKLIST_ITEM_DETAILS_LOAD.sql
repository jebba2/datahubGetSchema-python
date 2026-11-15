-- Data set: Checklist Item Details (staging table)
-- Source: https://community.d2l.com/brightspace/kb/articles/4523-checklist-data-sets#checklist-item-details
CREATE TABLE "CHECKLIST_ITEM_DETAILS_LOAD" (
    "ITEMID" NUMBER(19) NOT NULL,
    "CATEGORYID" NUMBER(19),
    "NAME" VARCHAR2(512 CHAR),
    "DESCRIPTION" VARCHAR2(1000 CHAR),
    "DESCRIPTIONISHTML" NUMBER(1),
    "DUEDATE" TIMESTAMP(7),
    "SCHEDULEID" NUMBER(10),
    "SORTORDER" NUMBER(10),
    "ISAUTOCHECKED" NUMBER(1),
    "LASTMODIFIEDUTC" TIMESTAMP(7),
    "DATEDELETED" TIMESTAMP(7),
    "DELETEDBY" NUMBER(10),
    "VERSION" NUMBER(19),
    PRIMARY KEY ("ITEMID")
);
