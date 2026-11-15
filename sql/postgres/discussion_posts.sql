-- Data set: Discussion Posts
-- Source: https://community.d2l.com/brightspace/kb/articles/4525-discussions-data-sets#discussion-posts
CREATE TABLE "discussion_posts" (
    "orgunitid" INTEGER,
    "topicid" BIGINT,
    "userid" INTEGER,
    "postid" BIGINT NOT NULL,
    "threadid" BIGINT,
    "isreply" BOOLEAN,
    "parentpostid" BIGINT,
    "numreplies" INTEGER,
    "dateposted" TIMESTAMP(6),
    "isdeleted" BOOLEAN,
    "ratingsum" BIGINT,
    "numratings" BIGINT,
    "score" NUMERIC(19,9),
    "lasteditdate" TIMESTAMP(6),
    "sortorder" INTEGER,
    "depth" INTEGER,
    "thread" VARCHAR(400),
    "wordcount" INTEGER,
    "attachmentcount" INTEGER,
    "version" BIGINT,
    PRIMARY KEY ("postid")
);
CREATE INDEX "ix_discussion_posts_orgunitid" ON "discussion_posts" ("orgunitid");
CREATE INDEX "ix_discussion_posts_topicid" ON "discussion_posts" ("topicid");
CREATE INDEX "ix_discussion_posts_userid" ON "discussion_posts" ("userid");
CREATE INDEX "ix_discussion_posts_parentpostid" ON "discussion_posts" ("parentpostid");
