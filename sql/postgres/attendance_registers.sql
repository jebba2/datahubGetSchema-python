-- Data set: Attendance Registers
-- Source: https://community.d2l.com/brightspace/kb/articles/4519-attendance-data-sets#attendance-registers
CREATE TABLE "attendance_registers" (
    "attendanceregisterid" BIGINT NOT NULL,
    "orgunitid" INTEGER,
    "name" VARCHAR(128),
    "description" VARCHAR(1000),
    "schemeid" BIGINT,
    "isvisible" BOOLEAN,
    "includeallusers" BOOLEAN,
    "causeforconcern" NUMERIC(19,9),
    "version" BIGINT,
    "datedeleted" TIMESTAMP(6),
    "deletedby" INTEGER,
    PRIMARY KEY ("attendanceregisterid")
);
CREATE INDEX "ix_attendance_registers_orgunitid" ON "attendance_registers" ("orgunitid");
CREATE INDEX "ix_attendance_registers_schemeid" ON "attendance_registers" ("schemeid");
