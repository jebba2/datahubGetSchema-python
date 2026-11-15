-- Data set: Quiz Attempts Log
-- Source: https://community.d2l.com/brightspace/kb/articles/4532-quizzes-data-sets#quiz-attempts-log
CREATE TABLE "quiz_attempts_log" (
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
CREATE INDEX "ix_quiz_attempts_log_attemptid" ON "quiz_attempts_log" ("attemptid");
CREATE INDEX "ix_quiz_attempts_log_userid" ON "quiz_attempts_log" ("userid");
