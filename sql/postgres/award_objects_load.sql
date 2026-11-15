-- Data set: Award Objects (staging table)
-- Source: https://community.d2l.com/brightspace/kb/articles/4520-awards-data-sets#award-objects
CREATE TABLE "award_objects_load" (
    "awardid" BIGINT NOT NULL,
    "name" VARCHAR(256),
    "awardtypeid" INTEGER,
    "type" VARCHAR(128),
    "description" VARCHAR(512),
    "expirycalculationtype" VARCHAR(128),
    "expirynotificationtype" VARCHAR(128),
    "expirydate" TIMESTAMP(6),
    "imagepath" VARCHAR(1000),
    "createdbyuserid" BIGINT,
    "lastmodified" TIMESTAMP(6),
    "isdeleted" BOOLEAN,
    "criteria" VARCHAR(1000),
    PRIMARY KEY ("awardid")
);
