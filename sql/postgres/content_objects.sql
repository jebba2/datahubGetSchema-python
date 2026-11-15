-- Data set: Content Objects
-- Source: https://community.d2l.com/brightspace/kb/articles/4713-content-data-sets#content-objects
CREATE TABLE "content_objects" (
    "contentobjectid" INTEGER NOT NULL,
    "orgunitid" INTEGER,
    "title" VARCHAR(150),
    "contentobjecttype" VARCHAR(6),
    "completiontype" VARCHAR(7),
    "parentcontentobjectid" INTEGER,
    "location" VARCHAR(1024),
    "startdate" TIMESTAMP(6),
    "enddate" TIMESTAMP(6),
    "duedate" TIMESTAMP(6),
    "objectid1" INTEGER,
    "objectid2" INTEGER,
    "objectid3" INTEGER,
    "lastmodified" TIMESTAMP(6),
    "isdeleted" BOOLEAN,
    "sortorder" INTEGER,
    "depth" INTEGER,
    "toolid" INTEGER,
    "ishidden" BOOLEAN,
    "resultid" INTEGER,
    "deleteddate" TIMESTAMP(6),
    "createdby" INTEGER,
    "lastmodifiedby" INTEGER,
    "deletedby" INTEGER,
    "aiutilization" INTEGER,
    "version" BIGINT,
    PRIMARY KEY ("contentobjectid")
);
CREATE INDEX "ix_content_objects_orgunitid" ON "content_objects" ("orgunitid");
CREATE INDEX "ix_content_objects_toolid" ON "content_objects" ("toolid");
