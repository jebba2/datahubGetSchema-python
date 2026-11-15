-- Data set: Activity Feed Post Log (staging table)
-- Source: https://community.d2l.com/brightspace/kb/articles/4712-activity-feed-data-sets#activity-feed-post-log
CREATE TABLE "activity_feed_post_log_load" (
    "logid" UUID NOT NULL,
    "userid" INTEGER,
    "orgunitid" INTEGER,
    "postid" UUID,
    "posttype" VARCHAR(16),
    "action" VARCHAR(16),
    "actiondate" TIMESTAMP(6),
    "dropboxid" BIGINT,
    "content" VARCHAR(3072),
    "commentcount" INTEGER,
    "attachmentcount" INTEGER,
    PRIMARY KEY ("logid")
);
