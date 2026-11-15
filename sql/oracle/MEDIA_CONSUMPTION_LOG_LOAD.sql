-- Data set: Media Consumption Log (staging table)
-- Source: https://community.d2l.com/brightspace/kb/articles/22812-content-service-data-sets#media-consumption-log
CREATE TABLE "MEDIA_CONSUMPTION_LOG_LOAD" (
    "LOGID" VARCHAR2(36 CHAR) NOT NULL,
    "USERID" NUMBER(10),
    "CONTENTID" VARCHAR2(36 CHAR),
    "REVISIONID" VARCHAR2(36 CHAR),
    "CONTENTTYPE" VARCHAR2(5 CHAR),
    "CLIENTAPP" VARCHAR2(32 CHAR),
    "DATECONSUMED" TIMESTAMP(7),
    "DURATIONPERCENTAGEWATCHED" NUMBER(10),
    PRIMARY KEY ("LOGID")
);
