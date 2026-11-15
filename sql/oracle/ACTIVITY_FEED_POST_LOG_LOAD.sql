-- Data set: Activity Feed Post Log (staging table)
-- Source: https://community.d2l.com/brightspace/kb/articles/4712-activity-feed-data-sets#activity-feed-post-log
CREATE TABLE "ACTIVITY_FEED_POST_LOG_LOAD" (
    "LOGID" VARCHAR2(36 CHAR) NOT NULL,
    "USERID" NUMBER(10),
    "ORGUNITID" NUMBER(10),
    "POSTID" VARCHAR2(36 CHAR),
    "POSTTYPE" VARCHAR2(16 CHAR),
    "ACTION" VARCHAR2(16 CHAR),
    "ACTIONDATE" TIMESTAMP(7),
    "DROPBOXID" NUMBER(19),
    "CONTENT" CLOB,
    "COMMENTCOUNT" NUMBER(10),
    "ATTACHMENTCOUNT" NUMBER(10),
    PRIMARY KEY ("LOGID")
);
