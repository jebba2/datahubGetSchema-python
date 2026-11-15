-- Data set: Quiz Attempts
-- Source: https://community.d2l.com/brightspace/kb/articles/4532-quizzes-data-sets#quiz-attempts
CREATE TABLE "quiz_attempts" (
    "attemptid" BIGINT NOT NULL,
    "quizid" BIGINT,
    "userid" INTEGER,
    "orgunitid" INTEGER,
    "attemptnumber" INTEGER,
    "timestarted" TIMESTAMP(6),
    "timecompleted" TIMESTAMP(6),
    "score" NUMERIC(19,9),
    "isgraded" BOOLEAN,
    "oldattemptnumber" INTEGER,
    "isdeleted" BOOLEAN,
    "possiblescore" NUMERIC(19,9),
    "isretakeincorrectonly" BOOLEAN,
    "duedate" TIMESTAMP(6),
    "timelimit" INTEGER,
    "timelimitenforced" BOOLEAN,
    "timelimitexceededbehaviour" VARCHAR(128),
    "issynchronous" BOOLEAN,
    "deductionpercentage" INTEGER,
    "version" BIGINT,
    PRIMARY KEY ("attemptid")
);
CREATE INDEX "ix_quiz_attempts_quizid" ON "quiz_attempts" ("quizid");
CREATE INDEX "ix_quiz_attempts_userid" ON "quiz_attempts" ("userid");
CREATE INDEX "ix_quiz_attempts_orgunitid" ON "quiz_attempts" ("orgunitid");
