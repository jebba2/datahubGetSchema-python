-- Data set: Media Objects (staging table)
-- Source: https://community.d2l.com/brightspace/kb/articles/22812-content-service-data-sets#media-objects
CREATE TABLE "MEDIA_OBJECTS_LOAD" (
    "CONTENTID" VARCHAR2(36 CHAR) NOT NULL,
    "TITLE" VARCHAR2(1000 CHAR),
    "REVISIONCOUNT" NUMBER(10),
    "OWNERID" NUMBER(10),
    "LASTMODIFIED" TIMESTAMP(7),
    PRIMARY KEY ("CONTENTID")
);
