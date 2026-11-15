-- Data set: Content Files Properties Log (staging table)
-- Source: https://community.d2l.com/brightspace/kb/articles/4713-content-data-sets#content-files-properties-log
CREATE TABLE "content_files_properties_log_load" (
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
