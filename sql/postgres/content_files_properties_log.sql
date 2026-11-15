-- Data set: Content Files Properties Log
-- Source: https://community.d2l.com/brightspace/kb/articles/4713-content-data-sets#content-files-properties-log
CREATE TABLE "content_files_properties_log" (
    "orgunitid" INTEGER NOT NULL,
    "contentobjectid" INTEGER NOT NULL,
    "action" VARCHAR(10),
    "filepath" VARCHAR(10000),
    "filename" VARCHAR(512),
    "fileextension" VARCHAR(512),
    "filesizebytes" BIGINT,
    "uploaddate" TIMESTAMP(6),
    "lastmodifiedby" INTEGER,
    "lastmodified" TIMESTAMP(6) NOT NULL,
    PRIMARY KEY ("orgunitid", "contentobjectid", "lastmodified")
);
CREATE INDEX "ix_content_files_properties_log_contentobjectid" ON "content_files_properties_log" ("contentobjectid");
CREATE INDEX "ix_content_files_properties_log_lastmodifiedby" ON "content_files_properties_log" ("lastmodifiedby");
