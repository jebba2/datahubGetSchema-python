-- Data set: Outcomes Course Specific Scales (staging table)
-- Source: https://community.d2l.com/brightspace/kb/articles/4796-outcomes-data-sets#outcomes-course-specific-scales
CREATE TABLE "outcomes_course_specific_scales_load" (
    "orgunitid" INTEGER NOT NULL,
    "registryid" UUID,
    "scaleid" UUID,
    "achievementthreshold" UUID,
    "createddate" TIMESTAMP(6),
    "lastmodifieddate" TIMESTAMP(6),
    "lastmodifiedby" INTEGER,
    "isdeleted" BOOLEAN,
    PRIMARY KEY ("orgunitid")
);
