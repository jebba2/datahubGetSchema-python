-- Data set: Quiz Attempts (staging table)
-- Source: https://community.d2l.com/brightspace/kb/articles/4532-quizzes-data-sets#quiz-attempts
CREATE TABLE "quiz_attempts_load" (
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
