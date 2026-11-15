-- Data set: Survey User Answers (staging table)
-- Source: https://community.d2l.com/brightspace/kb/articles/4538-surveys-data-sets#survey-user-answers
-- No primary key: D2L documents key column QuestionVersionId as nullable.
CREATE TABLE "SURVEY_USER_ANSWERS_LOAD" (
    "ATTEMPTID" NUMBER(19),
    "QUESTIONID" NUMBER(19),
    "QUESTIONVERSIONID" NUMBER(19),
    "TIMECOMPLETED" TIMESTAMP(7),
    "QUESTIONNUMBER" NUMBER(10),
    "COMMENT" VARCHAR2(1000 CHAR),
    "SORTORDER" NUMBER(10),
    "SCORE" NUMBER(19,9),
    "PAGE" NUMBER(10),
    "ASSIGNED" NUMBER(1),
    "ISDELETED" NUMBER(1),
    "LASTMODIFIED" TIMESTAMP(7),
    "LASTMODIFIEDBY" NUMBER(10),
    "SURVEYTIMECOMPLETED" TIMESTAMP(7)
);
