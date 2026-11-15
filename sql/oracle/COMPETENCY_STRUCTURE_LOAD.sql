-- Data set: Competency Structure (staging table)
-- Source: https://community.d2l.com/brightspace/kb/articles/4754-competency-data-sets#competency-structure
CREATE TABLE "COMPETENCY_STRUCTURE_LOAD" (
    "OBJECTID" NUMBER(19) NOT NULL,
    "PARENTOBJECTID" NUMBER(19) NOT NULL,
    "BASEOBJECTID" NUMBER(19) NOT NULL,
    "DEPTH" NUMBER(10),
    "ENTRYTIME" NUMBER(10) NOT NULL,
    PRIMARY KEY ("OBJECTID", "PARENTOBJECTID", "BASEOBJECTID", "ENTRYTIME")
);
