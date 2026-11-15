-- Data set: Calendar Events
-- Source: https://community.d2l.com/brightspace/kb/articles/4521-calendar-data-sets#calendar-events
CREATE TABLE "calendar_events" (
    "scheduleid" BIGINT NOT NULL,
    "orgunitid" BIGINT,
    "userid" BIGINT,
    "title" VARCHAR(256),
    "startdate" TIMESTAMP(6),
    "enddate" TIMESTAMP(6),
    "timezoneidentifier" VARCHAR(256),
    "isalldayevent" BOOLEAN,
    "recurrencetype" VARCHAR(7),
    "recurrenceinterval" INTEGER,
    "createdbyuserid" INTEGER,
    "lastmodified" TIMESTAMP(6),
    "eventobjecttypename" VARCHAR(200),
    "objectlookupid1" BIGINT,
    "objectlookupid2" BIGINT,
    PRIMARY KEY ("scheduleid")
);
CREATE INDEX "ix_calendar_events_orgunitid" ON "calendar_events" ("orgunitid");
CREATE INDEX "ix_calendar_events_userid" ON "calendar_events" ("userid");
CREATE INDEX "ix_calendar_events_createdbyuserid" ON "calendar_events" ("createdbyuserid");
