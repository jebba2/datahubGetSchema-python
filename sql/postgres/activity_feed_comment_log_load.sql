-- Data set: Activity Feed Comment Log (staging table)
-- Source: https://community.d2l.com/brightspace/kb/articles/4712-activity-feed-data-sets#activity-feed-comment-log
CREATE TABLE "activity_feed_comment_log_load" (
    "logid" UUID NOT NULL,
    "userid" INTEGER,
    "orgunitid" INTEGER,
    "commentid" UUID,
    "action" VARCHAR(16),
    "actiondate" TIMESTAMP(6),
    "content" VARCHAR(3072),
    "postid" UUID,
    PRIMARY KEY ("logid")
);
