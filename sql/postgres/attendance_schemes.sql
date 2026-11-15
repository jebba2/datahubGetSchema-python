-- Data set: Attendance Schemes
-- Source: https://community.d2l.com/brightspace/kb/articles/4519-attendance-data-sets#attendance-schemes
CREATE TABLE "attendance_schemes" (
    "schemeid" BIGINT NOT NULL,
    "orgunitid" INTEGER,
    "schemename" VARCHAR(128),
    "schemesymbolid" BIGINT NOT NULL,
    "symbolname" VARCHAR(128),
    "symbolvalue" VARCHAR(50),
    "percentage" NUMERIC(19,9),
    "version" BIGINT,
    "datedeleted" TIMESTAMP(6),
    "deletedby" INTEGER,
    PRIMARY KEY ("schemeid", "schemesymbolid")
);
CREATE INDEX "ix_attendance_schemes_orgunitid" ON "attendance_schemes" ("orgunitid");
