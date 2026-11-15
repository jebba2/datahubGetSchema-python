-- Data set: Quiz Attempts Log (staging table)
-- Source: https://community.d2l.com/brightspace/kb/articles/4532-quizzes-data-sets#quiz-attempts-log
CREATE TABLE "quiz_attempts_log_load" (
    "logid" BIGINT NOT NULL,
    "attemptid" BIGINT,
    "eventtypeid" INTEGER,
    "name" VARCHAR(256),
    "description" VARCHAR(256),
    "eventtime" TIMESTAMP(6),
    "ipaddress" VARCHAR(45),
    "userid" INTEGER,
    "isdeleted" BOOLEAN,
    PRIMARY KEY ("logid")
);
