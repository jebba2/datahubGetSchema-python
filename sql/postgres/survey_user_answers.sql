-- Data set: Survey User Answers
-- Source: https://community.d2l.com/brightspace/kb/articles/4538-surveys-data-sets#survey-user-answers
-- No primary key: D2L documents key column QuestionVersionId as nullable.
CREATE TABLE "survey_user_answers" (
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
CREATE INDEX "ix_survey_user_answers_attemptid" ON "survey_user_answers" ("attemptid");
CREATE INDEX "ix_survey_user_answers_questionid" ON "survey_user_answers" ("questionid");
CREATE INDEX "ix_survey_user_answers_questionversionid" ON "survey_user_answers" ("questionversionid");
CREATE INDEX "ix_survey_user_answers_lastmodifiedby" ON "survey_user_answers" ("lastmodifiedby");
