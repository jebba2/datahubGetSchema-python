-- Data set: Checklist Completions (staging table)
-- Source: https://community.d2l.com/brightspace/kb/articles/4523-checklist-data-sets#checklist-completions
CREATE TABLE "checklist_completions_load" (
    "userid" INTEGER NOT NULL,
    "datecompleted" TIMESTAMP(6),
    "itemid" BIGINT NOT NULL,
    "lastmodified" TIMESTAMP(6),
    "iscompleted" BOOLEAN,
    "datedeleted" TIMESTAMP(6),
    "deletedby" INTEGER,
    "version" BIGINT,
    PRIMARY KEY ("userid", "itemid")
);
