-- Data set: Checklist Category Details (staging table)
-- Source: https://community.d2l.com/brightspace/kb/articles/4523-checklist-data-sets#checklist-category-details
CREATE TABLE "CHECKLIST_CATEGORY_DETAILS_LOAD" (
    "CATEGORYID" NUMBER(19) NOT NULL,
    "CHECKLISTID" NUMBER(19),
    "NAME" VARCHAR2(512 CHAR),
    "DESCRIPTION" VARCHAR2(1000 CHAR),
    "DESCRIPTIONISHTML" NUMBER(1),
    "SORTORDER" NUMBER(10),
    "LASTMODIFIEDUTC" TIMESTAMP(7),
    "DATEDELETED" TIMESTAMP(7),
    "DELETEDBY" NUMBER(10),
    "VERSION" NUMBER(19),
    PRIMARY KEY ("CATEGORYID")
);
