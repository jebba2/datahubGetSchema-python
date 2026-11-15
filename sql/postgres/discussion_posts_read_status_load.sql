-- Data set: Discussion Posts Read Status (staging table)
-- Source: https://community.d2l.com/brightspace/kb/articles/4525-discussions-data-sets#discussion-posts-read-status
CREATE TABLE "discussion_posts_read_status_load" (
    "topicid" BIGINT,
    "userid" INTEGER NOT NULL,
    "postid" BIGINT NOT NULL,
    "isread" BOOLEAN,
    "firstreaddate" TIMESTAMP(6),
    "lastreaddate" TIMESTAMP(6),
    "version" BIGINT,
    PRIMARY KEY ("userid", "postid")
);
