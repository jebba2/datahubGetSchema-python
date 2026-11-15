-- Data set: Activity Feed Comment Objects
-- Source: https://community.d2l.com/brightspace/kb/articles/4712-activity-feed-data-sets#activity-feed-comment-objects
CREATE TABLE "activity_feed_comment_objects" (
    "orgunitid" INTEGER,
    "commentid" UUID NOT NULL,
    "lastmodifiedby" INTEGER,
    "lastmodified" TIMESTAMP(6),
    "content" VARCHAR(3072),
    "isdeleted" BOOLEAN,
    "postid" UUID,
    "version" BIGINT,
    PRIMARY KEY ("commentid")
);
CREATE INDEX "ix_activity_feed_comment_objects_orgunitid" ON "activity_feed_comment_objects" ("orgunitid");
CREATE INDEX "ix_activity_feed_comment_objects_lastmodifiedby" ON "activity_feed_comment_objects" ("lastmodifiedby");
CREATE INDEX "ix_activity_feed_comment_objects_postid" ON "activity_feed_comment_objects" ("postid");
