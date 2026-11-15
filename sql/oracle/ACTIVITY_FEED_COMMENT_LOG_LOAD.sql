-- Data set: Activity Feed Comment Log (staging table)
-- Source: https://community.d2l.com/brightspace/kb/articles/4712-activity-feed-data-sets#activity-feed-comment-log
CREATE TABLE "ACTIVITY_FEED_COMMENT_LOG_LOAD" (
    "LOGID" VARCHAR2(36 CHAR) NOT NULL,
    "USERID" NUMBER(10),
    "ORGUNITID" NUMBER(10),
    "COMMENTID" VARCHAR2(36 CHAR),
    "ACTION" VARCHAR2(16 CHAR),
    "ACTIONDATE" TIMESTAMP(7),
    "CONTENT" CLOB,
    "POSTID" VARCHAR2(36 CHAR),
    PRIMARY KEY ("LOGID")
);
