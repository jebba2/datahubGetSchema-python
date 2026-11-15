-- Data set: Rubric Object Criteria (staging table)
-- Source: https://community.d2l.com/brightspace/kb/articles/4535-rubrics-data-sets#rubric-object-criteria
CREATE TABLE "RUBRIC_OBJECT_CRITERIA_LOAD" (
    "RUBRICID" NUMBER(19),
    "CRITERIONID" NUMBER(19) NOT NULL,
    "NAME" VARCHAR2(500 CHAR),
    "SORTORDER" NUMBER(10),
    "CRITERIAGROUPID" NUMBER(19),
    "GROUPNAME" VARCHAR2(256 CHAR),
    "GROUPSORTORDER" NUMBER(10),
    "LEVELSETID" NUMBER(19),
    "ISDELETED" NUMBER(1),
    PRIMARY KEY ("CRITERIONID")
);
