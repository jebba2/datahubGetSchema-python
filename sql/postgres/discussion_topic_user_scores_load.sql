-- Data set: Discussion Topic User Scores (staging table)
-- Source: https://community.d2l.com/brightspace/kb/articles/4525-discussions-data-sets#discussion-topic-user-scores
CREATE TABLE "discussion_topic_user_scores_load" (
    "userid" INTEGER NOT NULL,
    "topicid" BIGINT NOT NULL,
    "score" NUMERIC(19,9),
    "isgraded" BOOLEAN,
    "version" BIGINT,
    "isdeleted" BOOLEAN,
    PRIMARY KEY ("userid", "topicid")
);
