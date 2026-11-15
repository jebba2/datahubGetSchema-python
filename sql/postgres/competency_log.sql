-- Data set: Competency Log
-- Source: https://community.d2l.com/brightspace/kb/articles/4754-competency-data-sets#competency-log
CREATE TABLE "competency_log" (
    "competencylogid" BIGINT NOT NULL,
    "logtypeid" INTEGER,
    "logtypename" VARCHAR(19),
    "objectid" BIGINT,
    "objecttypeid" INTEGER,
    "objecttypename" VARCHAR(18),
    "objectversion" INTEGER,
    "logdatetime" TIMESTAMP(6),
    "modifiedby" BIGINT,
    "indirectobjectid" BIGINT,
    "indirectobjecttypename" VARCHAR(18),
    "indirectobjecttypeid" INTEGER,
    "indirectobjectversion" INTEGER,
    PRIMARY KEY ("competencylogid")
);
CREATE INDEX "ix_competency_log_objectid" ON "competency_log" ("objectid");
CREATE INDEX "ix_competency_log_modifiedby" ON "competency_log" ("modifiedby");
