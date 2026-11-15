-- Data set: Attendance Sessions (staging table)
-- Source: https://community.d2l.com/brightspace/kb/articles/4519-attendance-data-sets#attendance-sessions
CREATE TABLE "ATTENDANCE_SESSIONS_LOAD" (
    "ATTENDANCESESSIONID" NUMBER(19) NOT NULL,
    "ATTENDANCEREGISTERID" NUMBER(19),
    "NAME" VARCHAR2(128 CHAR),
    "DESCRIPTION" VARCHAR2(256 CHAR),
    "SORTORDER" NUMBER(10),
    "VERSION" NUMBER(19),
    "DATEDELETED" TIMESTAMP(7),
    "DELETEDBY" NUMBER(10),
    PRIMARY KEY ("ATTENDANCESESSIONID")
);
