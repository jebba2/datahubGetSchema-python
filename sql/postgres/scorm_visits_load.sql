-- Data set: SCORM Visits (staging table)
-- Source: https://community.d2l.com/brightspace/kb/articles/4536-scorm-data-sets#scorm-visits
CREATE TABLE "scorm_visits_load" (
    "visitid" UUID NOT NULL,
    "scormobjectid" UUID,
    "userid" INTEGER,
    "orgunitid" INTEGER,
    "firstaccessdate" TIMESTAMP(6),
    "lastaccessdate" TIMESTAMP(6),
    "completeddate" TIMESTAMP(6),
    "completion" VARCHAR(100),
    "success" VARCHAR(100),
    "score" DOUBLE PRECISION,
    "timespent" INTEGER,
    "progress" DOUBLE PRECISION,
    "lastmodified" TIMESTAMP(6),
    PRIMARY KEY ("visitid")
);
