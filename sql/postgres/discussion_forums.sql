-- Data set: Discussion Forums
-- Source: https://community.d2l.com/brightspace/kb/articles/4525-discussions-data-sets#discussion-forums
CREATE TABLE "discussion_forums" (
    "orgunitid" INTEGER,
    "forumid" BIGINT NOT NULL,
    "name" VARCHAR(400),
    "description" VARCHAR(1000),
    "mustposttoparticipate" BOOLEAN,
    "allowanon" BOOLEAN,
    "ishidden" BOOLEAN,
    "requiresapproval" BOOLEAN,
    "sortorder" INTEGER,
    "isdeleted" BOOLEAN,
    "deleteddate" TIMESTAMP(6),
    "deletedbyuserid" INTEGER,
    "resultid" INTEGER,
    "startdate" TIMESTAMP(6),
    "startdateavailabilitytype" SMALLINT,
    "enddate" TIMESTAMP(6),
    "enddateavailabilitytype" SMALLINT,
    "version" BIGINT,
    PRIMARY KEY ("forumid")
);
CREATE INDEX "ix_discussion_forums_orgunitid" ON "discussion_forums" ("orgunitid");
CREATE INDEX "ix_discussion_forums_deletedbyuserid" ON "discussion_forums" ("deletedbyuserid");
CREATE INDEX "ix_discussion_forums_resultid" ON "discussion_forums" ("resultid");
