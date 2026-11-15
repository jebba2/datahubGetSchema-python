-- Data set: Activity Feed Comment Log
-- Source: https://community.d2l.com/brightspace/kb/articles/4712-activity-feed-data-sets#activity-feed-comment-log
CREATE TABLE "activity_feed_comment_log" (
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
CREATE INDEX "ix_activity_feed_comment_log_userid" ON "activity_feed_comment_log" ("userid");
CREATE INDEX "ix_activity_feed_comment_log_orgunitid" ON "activity_feed_comment_log" ("orgunitid");
CREATE INDEX "ix_activity_feed_comment_log_postid" ON "activity_feed_comment_log" ("postid");
