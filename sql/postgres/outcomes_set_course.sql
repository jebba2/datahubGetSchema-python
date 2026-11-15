-- Data set: Outcomes Set Course
-- Source: https://community.d2l.com/brightspace/kb/articles/4796-outcomes-data-sets#outcomes-set-course
CREATE TABLE "outcomes_set_course" (
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
CREATE INDEX "ix_outcomes_set_course_orgunitid" ON "outcomes_set_course" ("orgunitid");
CREATE INDEX "ix_outcomes_set_course_sourceoutcomesetid" ON "outcomes_set_course" ("sourceoutcomesetid");
CREATE INDEX "ix_outcomes_set_course_createdby" ON "outcomes_set_course" ("createdby");
CREATE INDEX "ix_outcomes_set_course_lastmodifiedby" ON "outcomes_set_course" ("lastmodifiedby");
CREATE INDEX "ix_outcomes_set_course_scaleid" ON "outcomes_set_course" ("scaleid");
CREATE INDEX "ix_outcomes_set_course_achievementthreshold" ON "outcomes_set_course" ("achievementthreshold");
