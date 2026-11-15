-- Data set: Discussion Forums (staging table)
-- Source: https://community.d2l.com/brightspace/kb/articles/4525-discussions-data-sets#discussion-forums
CREATE TABLE "discussion_forums_load" (
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
