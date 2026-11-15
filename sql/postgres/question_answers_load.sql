-- Data set: Question Answers (staging table)
-- Source: https://community.d2l.com/brightspace/kb/articles/4531-questions-data-sets#question-answers
CREATE TABLE "question_answers_load" (
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
