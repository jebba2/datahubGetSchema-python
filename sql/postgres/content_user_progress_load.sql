-- Data set: Content User Progress (staging table)
-- Source: https://community.d2l.com/brightspace/kb/articles/4713-content-data-sets#content-user-progress
CREATE TABLE "content_user_progress_load" (
    "contentobjectid" INTEGER NOT NULL,
    "userid" INTEGER NOT NULL,
    "completeddate" TIMESTAMP(6),
    "lastvisited" TIMESTAMP(6),
    "isread" BOOLEAN,
    "numrealvisits" INTEGER,
    "numfakevisits" INTEGER,
    "totaltime" BIGINT,
    "isvisited" BOOLEAN,
    "iscurrentbookmark" BOOLEAN,
    "isselfassesscomplete" BOOLEAN,
    "lastmodified" TIMESTAMP(6),
    "version" BIGINT,
    PRIMARY KEY ("contentobjectid", "userid")
);
