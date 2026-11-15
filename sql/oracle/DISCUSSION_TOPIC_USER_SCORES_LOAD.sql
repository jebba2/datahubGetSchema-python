-- Data set: Discussion Topic User Scores (staging table)
-- Source: https://community.d2l.com/brightspace/kb/articles/4525-discussions-data-sets#discussion-topic-user-scores
CREATE TABLE "DISCUSSION_TOPIC_USER_SCORES_LOAD" (
    "USERID" NUMBER(10) NOT NULL,
    "TOPICID" NUMBER(19) NOT NULL,
    "SCORE" NUMBER(19,9),
    "ISGRADED" NUMBER(1),
    "VERSION" NUMBER(19),
    "ISDELETED" NUMBER(1),
    PRIMARY KEY ("USERID", "TOPICID")
);
