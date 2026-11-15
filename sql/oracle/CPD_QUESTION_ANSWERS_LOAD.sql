-- Data set: CPD Question Answers (staging table)
-- Source: https://community.d2l.com/brightspace/kb/articles/26020-continuous-professional-development-cpd-data-sets#cpd-question-answers
CREATE TABLE "CPD_QUESTION_ANSWERS_LOAD" (
    "ANSWERID" NUMBER(10) NOT NULL,
    "ANSWERTEXT" CLOB,
    "QUESTIONID" NUMBER(10),
    "RECORDID" NUMBER(10),
    "USERID" NUMBER(10),
    "ACTION" VARCHAR2(16 CHAR),
    "LASTMODIFIED" TIMESTAMP(7),
    "DATEDELETED" TIMESTAMP(7),
    "VERSION" NUMBER(19),
    PRIMARY KEY ("ANSWERID")
);
