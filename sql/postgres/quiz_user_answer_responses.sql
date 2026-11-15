-- Data set: Quiz User Answer Responses
-- Source: https://community.d2l.com/brightspace/kb/articles/4532-quizzes-data-sets#quiz-user-answer-responses
CREATE TABLE "quiz_user_answer_responses" (
    "attemptid" BIGINT NOT NULL,
    "attemptnumber" INTEGER,
    "questionid" BIGINT NOT NULL,
    "questionversionid" BIGINT NOT NULL,
    "answerid" BIGINT NOT NULL,
    "sortorder" INTEGER,
    "iscorrect" BOOLEAN,
    "userselection" BIGINT,
    "useranswer" VARCHAR(1000),
    "filesetid" BIGINT,
    "lastmodified" TIMESTAMP(6),
    "isdeleted" BOOLEAN,
    PRIMARY KEY ("attemptid", "questionid", "questionversionid", "answerid")
);
CREATE INDEX "ix_quiz_user_answer_responses_questionid" ON "quiz_user_answer_responses" ("questionid");
CREATE INDEX "ix_quiz_user_answer_responses_questionversionid" ON "quiz_user_answer_responses" ("questionversionid");
CREATE INDEX "ix_quiz_user_answer_responses_answerid" ON "quiz_user_answer_responses" ("answerid");
