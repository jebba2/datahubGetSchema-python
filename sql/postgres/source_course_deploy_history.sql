-- Data set: Source Course Deploy History
-- Source: https://community.d2l.com/brightspace/kb/articles/33427-source-course-deploy-data-sets#source-course-deploy-history
CREATE TABLE "source_course_deploy_history" (
    "sourcecoursedeployid" BIGINT NOT NULL,
    "sourcecourseorgunitid" INTEGER NOT NULL,
    "targetcourseorgunitid" INTEGER NOT NULL,
    "userid" INTEGER,
    "status" VARCHAR(128),
    "queuedtime" TIMESTAMP(6),
    "completiontime" TIMESTAMP(6),
    PRIMARY KEY ("sourcecoursedeployid", "sourcecourseorgunitid", "targetcourseorgunitid")
);
CREATE INDEX "ix_source_course_deploy_history_sourcecourseorgunitid" ON "source_course_deploy_history" ("sourcecourseorgunitid");
CREATE INDEX "ix_source_course_deploy_history_targetcourseorgunitid" ON "source_course_deploy_history" ("targetcourseorgunitid");
CREATE INDEX "ix_source_course_deploy_history_userid" ON "source_course_deploy_history" ("userid");
