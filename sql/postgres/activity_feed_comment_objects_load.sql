-- Data set: Activity Feed Comment Objects (staging table)
-- Source: https://community.d2l.com/brightspace/kb/articles/4712-activity-feed-data-sets#activity-feed-comment-objects
CREATE TABLE "activity_feed_comment_objects_load" (
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
