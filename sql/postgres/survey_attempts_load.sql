-- Data set: Survey Attempts (staging table)
-- Source: https://community.d2l.com/brightspace/kb/articles/4538-surveys-data-sets#survey-attempts
CREATE TABLE "survey_attempts_load" (
    "attemptid" BIGINT NOT NULL,
    "surveyid" BIGINT,
    "userid" INTEGER,
    "orgunitid" INTEGER,
    "attemptnumber" INTEGER,
    "timestarted" TIMESTAMP(6),
    "timecompleted" TIMESTAMP(6),
    "attemptedfromorgunitid" INTEGER,
    "oldattemptnumber" INTEGER,
    "isdeleted" BOOLEAN,
    "version" BIGINT,
    PRIMARY KEY ("attemptid")
);
