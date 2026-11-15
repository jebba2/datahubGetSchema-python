-- Data set: Attendance Sessions
-- Source: https://community.d2l.com/brightspace/kb/articles/4519-attendance-data-sets#attendance-sessions
CREATE TABLE "attendance_sessions" (
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
CREATE INDEX "ix_attendance_sessions_attendanceregisterid" ON "attendance_sessions" ("attendanceregisterid");
