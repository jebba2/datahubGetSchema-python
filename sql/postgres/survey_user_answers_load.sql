-- Data set: Survey User Answers (staging table)
-- Source: https://community.d2l.com/brightspace/kb/articles/4538-surveys-data-sets#survey-user-answers
-- No primary key: D2L documents key column QuestionVersionId as nullable.
CREATE TABLE "survey_user_answers_load" (
    "attemptid" BIGINT,
    "questionid" BIGINT,
    "questionversionid" BIGINT,
    "timecompleted" TIMESTAMP(6),
    "questionnumber" INTEGER,
    "comment" VARCHAR(1000),
    "sortorder" INTEGER,
    "score" NUMERIC(19,9),
    "page" INTEGER,
    "assigned" BOOLEAN,
    "isdeleted" BOOLEAN,
    "lastmodified" TIMESTAMP(6),
    "lastmodifiedby" INTEGER,
    "surveytimecompleted" TIMESTAMP(6)
);
