-- Data set: SCORM Objects
-- Source: https://community.d2l.com/brightspace/kb/articles/4536-scorm-data-sets#scorm-objects
CREATE TABLE "scorm_objects" (
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
CREATE INDEX "ix_scorm_objects_orgunitid" ON "scorm_objects" ("orgunitid");
CREATE INDEX "ix_scorm_objects_contentobjectid" ON "scorm_objects" ("contentobjectid");
CREATE INDEX "ix_scorm_objects_lastmodifiedby" ON "scorm_objects" ("lastmodifiedby");
