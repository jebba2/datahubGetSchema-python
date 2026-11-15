-- Data set: Accommodations Profile Log
-- Source: https://community.d2l.com/brightspace/kb/articles/4752-accommodations-data-sets#accommodations-profile-log
CREATE TABLE "accommodations_profile_log" (
    "accommodateduserid" BIGINT NOT NULL,
    "orgunitid" BIGINT NOT NULL,
    "quiztimelimitmultiplier" NUMERIC(5,2),
    "quiztimelimitextratime" INTEGER,
    "quizcontrolalwaysallowrightclick" BOOLEAN,
    "modifiedby" BIGINT,
    "lastmodified" TIMESTAMP(6) NOT NULL,
    PRIMARY KEY ("accommodateduserid", "orgunitid", "lastmodified")
);
CREATE INDEX "ix_accommodations_profile_log_orgunitid" ON "accommodations_profile_log" ("orgunitid");
CREATE INDEX "ix_accommodations_profile_log_modifiedby" ON "accommodations_profile_log" ("modifiedby");
