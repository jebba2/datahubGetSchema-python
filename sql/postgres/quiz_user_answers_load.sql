-- Data set: Quiz User Answers (staging table)
-- Source: https://community.d2l.com/brightspace/kb/articles/4532-quizzes-data-sets#quiz-user-answers
CREATE TABLE "quiz_user_answers_load" (
    "attemptid" BIGINT NOT NULL,
    "questionid" BIGINT,
    "questionversionid" BIGINT,
    "timecompleted" TIMESTAMP(6),
    "questionnumber" INTEGER,
    "comment" VARCHAR(1000),
    "sortorder" INTEGER,
    "score" NUMERIC(19,9),
    "page" INTEGER,
    "sectionid" BIGINT,
    "objectid" BIGINT NOT NULL,
    "outof" NUMERIC(19,9),
    "timestarted" TIMESTAMP(6),
    "isbonus" BOOLEAN,
    "isdeleted" BOOLEAN,
    "lastmodified" TIMESTAMP(6),
    "lastmodifiedby" INTEGER,
    "quiztimecompleted" TIMESTAMP(6),
    PRIMARY KEY ("attemptid", "objectid")
);
