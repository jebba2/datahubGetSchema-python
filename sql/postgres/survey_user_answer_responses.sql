-- Data set: Survey User Answer Responses
-- Source: https://community.d2l.com/brightspace/kb/articles/4538-surveys-data-sets#survey-user-answer-responses
CREATE TABLE "survey_user_answer_responses" (
    "attemptid" BIGINT NOT NULL,
    "attemptnumber" INTEGER,
    "questionid" BIGINT NOT NULL,
    "questionversionid" BIGINT NOT NULL,
    "answerid" BIGINT NOT NULL,
    "sortorder" BIGINT,
    "iscorrect" BOOLEAN,
    "userselection" BIGINT,
    "useranswer" VARCHAR(1000),
    "filesetid" BIGINT,
    "lastmodified" TIMESTAMP(6),
    "isdeleted" BOOLEAN,
    PRIMARY KEY ("attemptid", "questionid", "questionversionid", "answerid")
);
CREATE INDEX "ix_survey_user_answer_responses_questionid" ON "survey_user_answer_responses" ("questionid");
CREATE INDEX "ix_survey_user_answer_responses_questionversionid" ON "survey_user_answer_responses" ("questionversionid");
CREATE INDEX "ix_survey_user_answer_responses_answerid" ON "survey_user_answer_responses" ("answerid");
