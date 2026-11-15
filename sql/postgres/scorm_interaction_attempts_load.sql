-- Data set: SCORM Interaction Attempts (staging table)
-- Source: https://community.d2l.com/brightspace/kb/articles/4536-scorm-data-sets#scorm-interaction-attempts
CREATE TABLE "scorm_interaction_attempts_load" (
    "visitid" UUID NOT NULL,
    "interactionid" UUID NOT NULL,
    "attemptnumber" INTEGER NOT NULL,
    "activityid" UUID,
    "timestamp" TIMESTAMP(6),
    "response" VARCHAR(1000),
    "result" VARCHAR(100),
    "numericresult" DOUBLE PRECISION,
    "timespent" DOUBLE PRECISION,
    "lastmodified" TIMESTAMP(6),
    PRIMARY KEY ("visitid", "interactionid", "attemptnumber")
);
