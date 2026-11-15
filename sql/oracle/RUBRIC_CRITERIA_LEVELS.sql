-- Data set: Rubric Criteria Levels
-- Source: https://community.d2l.com/brightspace/kb/articles/4535-rubrics-data-sets#rubric-criteria-levels
CREATE TABLE "RUBRIC_CRITERIA_LEVELS" (
    "RUBRICID" NUMBER(19) NOT NULL,
    "CRITERIONID" NUMBER(19) NOT NULL,
    "DESCRIPTION" VARCHAR2(1000 CHAR),
    "FEEDBACK" VARCHAR2(1000 CHAR),
    "VALUE" NUMBER(19,9),
    "LEVELID" NUMBER(19) NOT NULL,
    "ISDELETED" NUMBER(1),
    "VERSION" NUMBER(19),
    PRIMARY KEY ("RUBRICID", "CRITERIONID", "LEVELID")
);
