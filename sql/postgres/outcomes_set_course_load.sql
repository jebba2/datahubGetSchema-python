-- Data set: Outcomes Set Course (staging table)
-- Source: https://community.d2l.com/brightspace/kb/articles/4796-outcomes-data-sets#outcomes-set-course
CREATE TABLE "outcomes_set_course_load" (
    "registryid" UUID NOT NULL,
    "orgunitid" BIGINT,
    "sourceoutcomesetid" BIGINT,
    "isprimary" BOOLEAN,
    "createddate" TIMESTAMP(6),
    "createdby" INTEGER,
    "lastmodifieddate" TIMESTAMP(6),
    "lastmodifiedby" INTEGER,
    "isdeleted" BOOLEAN,
    "scaleid" UUID,
    "achievementthreshold" UUID,
    PRIMARY KEY ("registryid")
);
