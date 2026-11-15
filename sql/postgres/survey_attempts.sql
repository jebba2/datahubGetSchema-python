-- Data set: Survey Attempts
-- Source: https://community.d2l.com/brightspace/kb/articles/4538-surveys-data-sets#survey-attempts
CREATE TABLE "survey_attempts" (
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
CREATE INDEX "ix_survey_attempts_surveyid" ON "survey_attempts" ("surveyid");
CREATE INDEX "ix_survey_attempts_userid" ON "survey_attempts" ("userid");
CREATE INDEX "ix_survey_attempts_orgunitid" ON "survey_attempts" ("orgunitid");
CREATE INDEX "ix_survey_attempts_attemptedfromorgunitid" ON "survey_attempts" ("attemptedfromorgunitid");
