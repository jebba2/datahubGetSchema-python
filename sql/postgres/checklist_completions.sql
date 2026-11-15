-- Data set: Checklist Completions
-- Source: https://community.d2l.com/brightspace/kb/articles/4523-checklist-data-sets#checklist-completions
CREATE TABLE "checklist_completions" (
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
CREATE INDEX "ix_checklist_completions_itemid" ON "checklist_completions" ("itemid");
CREATE INDEX "ix_checklist_completions_deletedby" ON "checklist_completions" ("deletedby");
