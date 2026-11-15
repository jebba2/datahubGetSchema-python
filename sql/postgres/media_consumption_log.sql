-- Data set: Media Consumption Log
-- Source: https://community.d2l.com/brightspace/kb/articles/22812-content-service-data-sets#media-consumption-log
CREATE TABLE "media_consumption_log" (
    "logid" UUID NOT NULL,
    "userid" INTEGER,
    "contentid" UUID,
    "revisionid" UUID,
    "contenttype" VARCHAR(5),
    "clientapp" VARCHAR(32),
    "dateconsumed" TIMESTAMP(6),
    "durationpercentagewatched" INTEGER,
    PRIMARY KEY ("logid")
);
CREATE INDEX "ix_media_consumption_log_userid" ON "media_consumption_log" ("userid");
CREATE INDEX "ix_media_consumption_log_contentid" ON "media_consumption_log" ("contentid");
