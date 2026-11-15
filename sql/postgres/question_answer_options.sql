-- Data set: Question Answer Options
-- Source: https://community.d2l.com/brightspace/kb/articles/4531-questions-data-sets#question-answer-options
CREATE TABLE "question_answer_options" (
    "answerid" BIGINT NOT NULL,
    "answertext" VARCHAR(1000),
    "weight" NUMERIC(19,9),
    "questionid" BIGINT NOT NULL,
    "questionversionid" BIGINT NOT NULL,
    "answeroptionid" INTEGER NOT NULL,
    PRIMARY KEY ("answerid", "questionid", "questionversionid", "answeroptionid")
);
CREATE INDEX "ix_question_answer_options_questionid" ON "question_answer_options" ("questionid");
CREATE INDEX "ix_question_answer_options_questionversionid" ON "question_answer_options" ("questionversionid");
