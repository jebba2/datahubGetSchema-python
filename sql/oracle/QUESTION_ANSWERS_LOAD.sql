-- Data set: Question Answers (staging table)
-- Source: https://community.d2l.com/brightspace/kb/articles/4531-questions-data-sets#question-answers
CREATE TABLE "QUESTION_ANSWERS_LOAD" (
    "ANSWERID" NUMBER(19) NOT NULL,
    "QUESTIONID" NUMBER(19) NOT NULL,
    "QUESTIONVERSIONID" NUMBER(19) NOT NULL,
    "SORTORDER" NUMBER(10),
    "WEIGHT" NUMBER(19,9),
    "ANSWER" VARCHAR2(1000 CHAR),
    "COMMENT" VARCHAR2(1000 CHAR),
    "DESCRIPTION" VARCHAR2(256 CHAR),
    PRIMARY KEY ("ANSWERID", "QUESTIONID", "QUESTIONVERSIONID")
);
