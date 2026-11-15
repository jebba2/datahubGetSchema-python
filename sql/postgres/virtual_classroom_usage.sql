-- Data set: Virtual Classroom Usage
-- Source: https://community.d2l.com/brightspace/kb/articles/4541-virtual-classroom-data-sets#virtual-classroom-usage
CREATE TABLE "virtual_classroom_usage" (
    "orgunitid" INTEGER,
    "coursename" VARCHAR(255),
    "meetingid" VARCHAR(36) NOT NULL,
    "meetingname" VARCHAR(255),
    "creationuserid" INTEGER,
    "creationdate" TIMESTAMP(6),
    "scheduleddate" TIMESTAMP(6),
    "scheduledduration" INTEGER,
    "ispublished" BOOLEAN,
    "externallinksenabled" BOOLEAN,
    "wholeclassinvited" BOOLEAN,
    "iscancelled" BOOLEAN,
    "startdatetime" TIMESTAMP(6),
    "enddatetime" TIMESTAMP(6),
    "isrecorded" BOOLEAN,
    PRIMARY KEY ("meetingid")
);
CREATE INDEX "ix_virtual_classroom_usage_orgunitid" ON "virtual_classroom_usage" ("orgunitid");
CREATE INDEX "ix_virtual_classroom_usage_creationuserid" ON "virtual_classroom_usage" ("creationuserid");
