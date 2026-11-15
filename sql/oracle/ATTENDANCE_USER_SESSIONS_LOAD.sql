-- Data set: Attendance User Sessions (staging table)
-- Source: https://community.d2l.com/brightspace/kb/articles/4519-attendance-data-sets#attendance-user-sessions
CREATE TABLE "ATTENDANCE_USER_SESSIONS_LOAD" (
    "USERID" NUMBER(10) NOT NULL,
    "ATTENDANCESESSIONID" NUMBER(19) NOT NULL,
    "SCHEMESYMBOLID" NUMBER(19),
    "LASTMODIFIED" TIMESTAMP(7),
    "LASTMODIFIEDBY" NUMBER(10),
    "ISDELETED" NUMBER(1),
    "VERSION" NUMBER(19),
    PRIMARY KEY ("USERID", "ATTENDANCESESSIONID")
);
