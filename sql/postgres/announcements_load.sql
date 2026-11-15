-- Data set: Announcements (staging table)
-- Source: https://community.d2l.com/brightspace/kb/articles/4723-announcements-data-sets#announcements
CREATE TABLE "announcements_load" (
    "announcementid" BIGINT NOT NULL,
    "orgunitid" BIGINT,
    "title" VARCHAR(400),
    "startdate" TIMESTAMP(6),
    "enddate" TIMESTAMP(6),
    "isglobal" BOOLEAN,
    "isdraft" BOOLEAN,
    "numattachments" INTEGER,
    "deleteddate" TIMESTAMP(6),
    "deletedbyuserid" INTEGER,
    "lastmodified" TIMESTAMP(6),
    "lastmodifiedby" INTEGER,
    "createdby" INTEGER,
    "isauthorinfoshown" BOOLEAN,
    "createddate" TIMESTAMP(6),
    "resultid" BIGINT,
    PRIMARY KEY ("announcementid")
);
