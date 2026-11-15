-- Data set: Accommodations Profile Log (staging table)
-- Source: https://community.d2l.com/brightspace/kb/articles/4752-accommodations-data-sets#accommodations-profile-log
CREATE TABLE "accommodations_profile_log_load" (
    "accommodateduserid" BIGINT NOT NULL,
    "orgunitid" BIGINT NOT NULL,
    "quiztimelimitmultiplier" NUMERIC(5,2),
    "quiztimelimitextratime" INTEGER,
    "quizcontrolalwaysallowrightclick" BOOLEAN,
    "modifiedby" BIGINT,
    "lastmodified" TIMESTAMP(6) NOT NULL,
    PRIMARY KEY ("accommodateduserid", "orgunitid", "lastmodified")
);
