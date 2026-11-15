-- Data set: SCORM Objects (staging table)
-- Source: https://community.d2l.com/brightspace/kb/articles/4536-scorm-data-sets#scorm-objects
CREATE TABLE "scorm_objects_load" (
    "scormobjectid" UUID NOT NULL,
    "orgunitid" INTEGER,
    "contentobjectid" INTEGER,
    "contentservicecontentid" UUID,
    "contentservicerevisionid" UUID,
    "contentservicetopicid" UUID,
    "title" VARCHAR(1000),
    "description" VARCHAR(1000),
    "learningstandard" VARCHAR(100),
    "lastmodified" TIMESTAMP(6),
    "lastmodifiedby" INTEGER,
    PRIMARY KEY ("scormobjectid")
);
