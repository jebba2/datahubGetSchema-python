-- Data set: Activity Feed Post Objects
-- Source: https://community.d2l.com/brightspace/kb/articles/4712-activity-feed-data-sets#activity-feed-post-objects
CREATE TABLE "activity_feed_post_objects" (
    "orgunitid" INTEGER,
    "postid" UUID NOT NULL,
    "posttype" VARCHAR(16),
    "lastmodifiedby" INTEGER,
    "lastmodified" TIMESTAMP(6),
    "dropboxid" BIGINT,
    "content" VARCHAR(3072),
    "isdeleted" BOOLEAN,
    "commentcount" INTEGER,
    "attachmentcount" INTEGER,
    "version" BIGINT,
    PRIMARY KEY ("postid")
);
CREATE INDEX "ix_activity_feed_post_objects_orgunitid" ON "activity_feed_post_objects" ("orgunitid");
CREATE INDEX "ix_activity_feed_post_objects_lastmodifiedby" ON "activity_feed_post_objects" ("lastmodifiedby");
CREATE INDEX "ix_activity_feed_post_objects_dropboxid" ON "activity_feed_post_objects" ("dropboxid");
