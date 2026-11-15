-- Data set: Attendance Registers (staging table)
-- Source: https://community.d2l.com/brightspace/kb/articles/4519-attendance-data-sets#attendance-registers
CREATE TABLE "attendance_registers_load" (
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
