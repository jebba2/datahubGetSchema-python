-- Data set: Quiz User Answers
-- Source: https://community.d2l.com/brightspace/kb/articles/4532-quizzes-data-sets#quiz-user-answers
CREATE TABLE "quiz_user_answers" (
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
CREATE INDEX "ix_quiz_user_answers_questionid" ON "quiz_user_answers" ("questionid");
CREATE INDEX "ix_quiz_user_answers_questionversionid" ON "quiz_user_answers" ("questionversionid");
CREATE INDEX "ix_quiz_user_answers_sectionid" ON "quiz_user_answers" ("sectionid");
CREATE INDEX "ix_quiz_user_answers_lastmodifiedby" ON "quiz_user_answers" ("lastmodifiedby");
