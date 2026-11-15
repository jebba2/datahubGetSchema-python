-- Data set: SCORM Objectives (staging table)
-- Source: https://community.d2l.com/brightspace/kb/articles/4536-scorm-data-sets#scorm-objectives
CREATE TABLE "scorm_objectives_load" (
    "objectiveid" UUID NOT NULL,
    "scormobjectid" UUID,
    "objectivetype" VARCHAR(100),
    "activityid" UUID,
    "internalid" VARCHAR(255),
    "isprimary" BOOLEAN,
    "description" VARCHAR(250),
    "scoremin" DOUBLE PRECISION,
    "scoremax" DOUBLE PRECISION,
    "lastmodified" TIMESTAMP(6),
    PRIMARY KEY ("objectiveid")
);
