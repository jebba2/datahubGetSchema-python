-- Data set: Question Answer Options (staging table)
-- Source: https://community.d2l.com/brightspace/kb/articles/4531-questions-data-sets#question-answer-options
CREATE TABLE "QUESTION_ANSWER_OPTIONS_LOAD" (
    "ANSWERID" NUMBER(19) NOT NULL,
    "ANSWERTEXT" VARCHAR2(1000 CHAR),
    "WEIGHT" NUMBER(19,9),
    "QUESTIONID" NUMBER(19) NOT NULL,
    "QUESTIONVERSIONID" NUMBER(19) NOT NULL,
    "ANSWEROPTIONID" NUMBER(10) NOT NULL,
    PRIMARY KEY ("ANSWERID", "QUESTIONID", "QUESTIONVERSIONID", "ANSWEROPTIONID")
);
