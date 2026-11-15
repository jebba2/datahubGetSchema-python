-- Data set: Outcomes Course Specific Scales
-- Source: https://community.d2l.com/brightspace/kb/articles/4796-outcomes-data-sets#outcomes-course-specific-scales
CREATE TABLE "outcomes_course_specific_scales" (
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
CREATE INDEX "ix_outcomes_course_specific_scales_registryid" ON "outcomes_course_specific_scales" ("registryid");
CREATE INDEX "ix_outcomes_course_specific_scales_scaleid" ON "outcomes_course_specific_scales" ("scaleid");
CREATE INDEX "ix_outcomes_course_specific_scales_achievementthreshold" ON "outcomes_course_specific_scales" ("achievementthreshold");
CREATE INDEX "ix_outcomes_course_specific_scales_lastmodifiedby" ON "outcomes_course_specific_scales" ("lastmodifiedby");
