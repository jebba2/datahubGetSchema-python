-- Data set: Audio Video Processed
-- Source: https://community.d2l.com/brightspace/kb/articles/22812-content-service-data-sets#audio-video-processed
CREATE TABLE "audio_video_processed" (
    "contentid" UUID NOT NULL,
    "revisionid" UUID NOT NULL,
    "revisionnumber" INTEGER,
    "type" VARCHAR(5),
    "source" VARCHAR(32),
    "revisionsize" BIGINT,
    "duration" INTEGER,
    "requiredtranscoding" BOOLEAN,
    "requiredtranscribing" BOOLEAN,
    "lastmodified" TIMESTAMP(6),
    PRIMARY KEY ("contentid", "revisionid")
);
