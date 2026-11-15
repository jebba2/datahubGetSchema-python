-- Data set: Checklist Completions (staging table)
-- Source: https://community.d2l.com/brightspace/kb/articles/4523-checklist-data-sets#checklist-completions
CREATE TABLE "CHECKLIST_COMPLETIONS_LOAD" (
    "USERID" NUMBER(10) NOT NULL,
    "DATECOMPLETED" TIMESTAMP(7),
    "ITEMID" NUMBER(19) NOT NULL,
    "LASTMODIFIED" TIMESTAMP(7),
    "ISCOMPLETED" NUMBER(1),
    "DATEDELETED" TIMESTAMP(7),
    "DELETEDBY" NUMBER(10),
    "VERSION" NUMBER(19),
    PRIMARY KEY ("USERID", "ITEMID")
);
