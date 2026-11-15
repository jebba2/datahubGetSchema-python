-- Data set: Media Objects
-- Source: https://community.d2l.com/brightspace/kb/articles/22812-content-service-data-sets#media-objects
CREATE TABLE "MEDIA_OBJECTS" (
    "CONTENTID" VARCHAR2(36 CHAR) NOT NULL,
    "TITLE" VARCHAR2(1000 CHAR),
    "REVISIONCOUNT" NUMBER(10),
    "OWNERID" NUMBER(10),
    "LASTMODIFIED" TIMESTAMP(7),
    PRIMARY KEY ("CONTENTID")
);
CREATE INDEX "IX_MEDIA_OBJECTS_OWNERID" ON "MEDIA_OBJECTS" ("OWNERID");
