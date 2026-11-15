-- Data set: Activity Feed Comment Objects (staging table)
-- Source: https://community.d2l.com/brightspace/kb/articles/4712-activity-feed-data-sets#activity-feed-comment-objects
CREATE TABLE "ACTIVITY_FEED_COMMENT_OBJECTS_LOAD" (
    "ORGUNITID" NUMBER(10),
    "COMMENTID" VARCHAR2(36 CHAR) NOT NULL,
    "LASTMODIFIEDBY" NUMBER(10),
    "LASTMODIFIED" TIMESTAMP(7),
    "CONTENT" CLOB,
    "ISDELETED" NUMBER(1),
    "POSTID" VARCHAR2(36 CHAR),
    "VERSION" NUMBER(19),
    PRIMARY KEY ("COMMENTID")
);
