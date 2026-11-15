-- Data set: Question Answers
-- Source: https://community.d2l.com/brightspace/kb/articles/4531-questions-data-sets#question-answers
CREATE TABLE "question_answers" (
    "answerid" BIGINT NOT NULL,
    "questionid" BIGINT NOT NULL,
    "questionversionid" BIGINT NOT NULL,
    "sortorder" INTEGER,
    "weight" NUMERIC(19,9),
    "answer" VARCHAR(1000),
    "comment" VARCHAR(1000),
    "description" VARCHAR(256),
    PRIMARY KEY ("answerid", "questionid", "questionversionid")
);
CREATE INDEX "ix_question_answers_questionid" ON "question_answers" ("questionid");
CREATE INDEX "ix_question_answers_questionversionid" ON "question_answers" ("questionversionid");
