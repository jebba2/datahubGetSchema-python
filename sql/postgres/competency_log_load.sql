-- Data set: Competency Log (staging table)
-- Source: https://community.d2l.com/brightspace/kb/articles/4754-competency-data-sets#competency-log
CREATE TABLE "competency_log_load" (
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
