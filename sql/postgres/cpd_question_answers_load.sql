-- Data set: CPD Question Answers (staging table)
-- Source: https://community.d2l.com/brightspace/kb/articles/26020-continuous-professional-development-cpd-data-sets#cpd-question-answers
CREATE TABLE "cpd_question_answers_load" (
    "answerid" INTEGER NOT NULL,
    "answertext" VARCHAR(4000),
    "questionid" INTEGER,
    "recordid" INTEGER,
    "userid" INTEGER,
    "action" VARCHAR(16),
    "lastmodified" TIMESTAMP(6),
    "datedeleted" TIMESTAMP(6),
    "version" BIGINT,
    PRIMARY KEY ("answerid")
);
