-- Data set: Survey Attempts (staging table)
-- Source: https://community.d2l.com/brightspace/kb/articles/4538-surveys-data-sets#survey-attempts
CREATE TABLE "SURVEY_ATTEMPTS_LOAD" (
    "ATTEMPTID" NUMBER(19) NOT NULL,
    "SURVEYID" NUMBER(19),
    "USERID" NUMBER(10),
    "ORGUNITID" NUMBER(10),
    "ATTEMPTNUMBER" NUMBER(10),
    "TIMESTARTED" TIMESTAMP(7),
    "TIMECOMPLETED" TIMESTAMP(7),
    "ATTEMPTEDFROMORGUNITID" NUMBER(10),
    "OLDATTEMPTNUMBER" NUMBER(10),
    "ISDELETED" NUMBER(1),
    "VERSION" NUMBER(19),
    PRIMARY KEY ("ATTEMPTID")
);
