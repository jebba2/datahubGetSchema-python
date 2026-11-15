-- Data set: Activity Feed Post Log
-- Source: https://community.d2l.com/brightspace/kb/articles/4712-activity-feed-data-sets#activity-feed-post-log
CREATE TABLE "activity_feed_post_log" (
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
CREATE INDEX "ix_activity_feed_post_log_userid" ON "activity_feed_post_log" ("userid");
CREATE INDEX "ix_activity_feed_post_log_orgunitid" ON "activity_feed_post_log" ("orgunitid");
CREATE INDEX "ix_activity_feed_post_log_dropboxid" ON "activity_feed_post_log" ("dropboxid");
