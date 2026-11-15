-- Data set: Assignment Special Access (staging table)
-- Source: https://community.d2l.com/brightspace/kb/articles/4767-assignments-data-sets#assignment-special-access
CREATE TABLE "ASSIGNMENT_SPECIAL_ACCESS_LOAD" (
    "DROPBOXID" NUMBER(19) NOT NULL,
    "USERID" NUMBER(10) NOT NULL,
    "STARTDATE" TIMESTAMP(7),
    "ENDDATE" TIMESTAMP(7),
    "DUEDATE" TIMESTAMP(7),
    "MODIFIEDBY" NUMBER(10),
    "LASTMODIFIED" TIMESTAMP(7),
    "ISDELETED" NUMBER(1),
    "STARTDATEAVAILABILITYTYPE" NUMBER(5),
    "ENDDATEAVAILABILITYTYPE" NUMBER(5),
    PRIMARY KEY ("DROPBOXID", "USERID")
);
