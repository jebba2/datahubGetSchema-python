-- Data set: Attendance Sessions (staging table)
-- Source: https://community.d2l.com/brightspace/kb/articles/4519-attendance-data-sets#attendance-sessions
CREATE TABLE "attendance_sessions_load" (
    "attendancesessionid" BIGINT NOT NULL,
    "attendanceregisterid" BIGINT,
    "name" VARCHAR(128),
    "description" VARCHAR(256),
    "sortorder" INTEGER,
    "version" BIGINT,
    "datedeleted" TIMESTAMP(6),
    "deletedby" INTEGER,
    PRIMARY KEY ("attendancesessionid")
);
