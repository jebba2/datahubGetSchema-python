-- Data set: Activity Feed Post Objects (staging table)
-- Source: https://community.d2l.com/brightspace/kb/articles/4712-activity-feed-data-sets#activity-feed-post-objects
CREATE TABLE "ACTIVITY_FEED_POST_OBJECTS_LOAD" (
    "ORGUNITID" NUMBER(10),
    "POSTID" VARCHAR2(36 CHAR) NOT NULL,
    "POSTTYPE" VARCHAR2(16 CHAR),
    "LASTMODIFIEDBY" NUMBER(10),
    "LASTMODIFIED" TIMESTAMP(7),
    "DROPBOXID" NUMBER(19),
    "CONTENT" CLOB,
    "ISDELETED" NUMBER(1),
    "COMMENTCOUNT" NUMBER(10),
    "ATTACHMENTCOUNT" NUMBER(10),
    "VERSION" NUMBER(19),
    PRIMARY KEY ("POSTID")
);
