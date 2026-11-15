-- Data set: Discussion Posts Read Status
-- Source: https://community.d2l.com/brightspace/kb/articles/4525-discussions-data-sets#discussion-posts-read-status
CREATE TABLE "discussion_posts_read_status" (
    "topicid" BIGINT,
    "userid" INTEGER NOT NULL,
    "postid" BIGINT NOT NULL,
    "isread" BOOLEAN,
    "firstreaddate" TIMESTAMP(6),
    "lastreaddate" TIMESTAMP(6),
    "version" BIGINT,
    PRIMARY KEY ("userid", "postid")
);
CREATE INDEX "ix_discussion_posts_read_status_topicid" ON "discussion_posts_read_status" ("topicid");
CREATE INDEX "ix_discussion_posts_read_status_postid" ON "discussion_posts_read_status" ("postid");
