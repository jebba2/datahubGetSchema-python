-- Data set: Assignment Special Access (staging table)
-- Source: https://community.d2l.com/brightspace/kb/articles/4767-assignments-data-sets#assignment-special-access
CREATE TABLE "assignment_special_access_load" (
    "dropboxid" BIGINT NOT NULL,
    "userid" INTEGER NOT NULL,
    "startdate" TIMESTAMP(6),
    "enddate" TIMESTAMP(6),
    "duedate" TIMESTAMP(6),
    "modifiedby" INTEGER,
    "lastmodified" TIMESTAMP(6),
    "isdeleted" BOOLEAN,
    "startdateavailabilitytype" SMALLINT,
    "enddateavailabilitytype" SMALLINT,
    PRIMARY KEY ("dropboxid", "userid")
);
