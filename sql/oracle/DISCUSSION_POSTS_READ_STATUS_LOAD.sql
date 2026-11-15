-- Data set: Discussion Posts Read Status (staging table)
-- Source: https://community.d2l.com/brightspace/kb/articles/4525-discussions-data-sets#discussion-posts-read-status
CREATE TABLE "DISCUSSION_POSTS_READ_STATUS_LOAD" (
    "TOPICID" NUMBER(19),
    "USERID" NUMBER(10) NOT NULL,
    "POSTID" NUMBER(19) NOT NULL,
    "ISREAD" NUMBER(1),
    "FIRSTREADDATE" TIMESTAMP(7),
    "LASTREADDATE" TIMESTAMP(7),
    "VERSION" NUMBER(19),
    PRIMARY KEY ("USERID", "POSTID")
);
