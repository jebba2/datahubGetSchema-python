-- Data set: Outcomes Course Specific Scales (staging table)
-- Source: https://community.d2l.com/brightspace/kb/articles/4796-outcomes-data-sets#outcomes-course-specific-scales
CREATE TABLE "OUTCOMES_COURSE_SPECIFIC_SCALES_LOAD" (
    "ORGUNITID" NUMBER(10) NOT NULL,
    "REGISTRYID" VARCHAR2(36 CHAR),
    "SCALEID" VARCHAR2(36 CHAR),
    "ACHIEVEMENTTHRESHOLD" VARCHAR2(36 CHAR),
    "CREATEDDATE" TIMESTAMP(7),
    "LASTMODIFIEDDATE" TIMESTAMP(7),
    "LASTMODIFIEDBY" NUMBER(10),
    "ISDELETED" NUMBER(1),
    PRIMARY KEY ("ORGUNITID")
);
