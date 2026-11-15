-- Data set: Attendance User Sessions
-- Source: https://community.d2l.com/brightspace/kb/articles/4519-attendance-data-sets#attendance-user-sessions
CREATE TABLE "attendance_user_sessions" (
    "userid" INTEGER NOT NULL,
    "attendancesessionid" BIGINT NOT NULL,
    "schemesymbolid" BIGINT,
    "lastmodified" TIMESTAMP(6),
    "lastmodifiedby" INTEGER,
    "isdeleted" BOOLEAN,
    "version" BIGINT,
    PRIMARY KEY ("userid", "attendancesessionid")
);
CREATE INDEX "ix_attendance_user_sessions_attendancesessionid" ON "attendance_user_sessions" ("attendancesessionid");
CREATE INDEX "ix_attendance_user_sessions_schemesymbolid" ON "attendance_user_sessions" ("schemesymbolid");
