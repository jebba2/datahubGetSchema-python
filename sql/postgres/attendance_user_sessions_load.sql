-- Data set: Attendance User Sessions (staging table)
-- Source: https://community.d2l.com/brightspace/kb/articles/4519-attendance-data-sets#attendance-user-sessions
CREATE TABLE "attendance_user_sessions_load" (
    "userid" INTEGER NOT NULL,
    "attendancesessionid" BIGINT NOT NULL,
    "schemesymbolid" BIGINT,
    "lastmodified" TIMESTAMP(6),
    "lastmodifiedby" INTEGER,
    "isdeleted" BOOLEAN,
    "version" BIGINT,
    PRIMARY KEY ("userid", "attendancesessionid")
);
