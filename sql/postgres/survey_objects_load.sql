-- Data set: Survey Objects (staging table)
-- Source: https://community.d2l.com/brightspace/kb/articles/4538-surveys-data-sets#survey-objects
CREATE TABLE "survey_objects_load" (
    "surveyid" BIGINT NOT NULL,
    "surveyname" VARCHAR(1000),
    "categoryid" BIGINT,
    "orgunitid" INTEGER,
    "description" VARCHAR(1000),
    "descriptionenabled" BOOLEAN,
    "hasinstantfeedback" BOOLEAN,
    "isanonymous" BOOLEAN,
    "isvisible" BOOLEAN,
    "submissionmessage" VARCHAR(1000),
    "footer" VARCHAR(1000),
    "footerisdisplayed" BOOLEAN,
    "startdate" TIMESTAMP(6),
    "enddate" TIMESTAMP(6),
    "displayincalendar" BOOLEAN,
    "resultid" BIGINT,
    "attemptsallowed" INTEGER,
    "sortorder" INTEGER,
    "createdby" INTEGER,
    "isdeleted" BOOLEAN,
    "lastmodified" TIMESTAMP(6),
    "lastmodifiedby" INTEGER,
    "version" BIGINT,
    "categoryname" VARCHAR(256),
    PRIMARY KEY ("surveyid")
);
