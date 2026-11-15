-- Data set: Media Objects
-- Source: https://community.d2l.com/brightspace/kb/articles/22812-content-service-data-sets#media-objects
CREATE TABLE "media_objects" (
    "contentid" UUID NOT NULL,
    "title" VARCHAR(1000),
    "revisioncount" INTEGER,
    "ownerid" INTEGER,
    "lastmodified" TIMESTAMP(6),
    PRIMARY KEY ("contentid")
);
CREATE INDEX "ix_media_objects_ownerid" ON "media_objects" ("ownerid");
