-- Data set: Discussion Topic User Scores
-- Source: https://community.d2l.com/brightspace/kb/articles/4525-discussions-data-sets#discussion-topic-user-scores
CREATE TABLE "discussion_topic_user_scores" (
    "userid" INTEGER NOT NULL,
    "topicid" BIGINT NOT NULL,
    "score" NUMERIC(19,9),
    "isgraded" BOOLEAN,
    "version" BIGINT,
    "isdeleted" BOOLEAN,
    PRIMARY KEY ("userid", "topicid")
);
CREATE INDEX "ix_discussion_topic_user_scores_topicid" ON "discussion_topic_user_scores" ("topicid");
