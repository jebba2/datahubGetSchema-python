-- Data set: Creator+ Practices Engagement
-- Source: https://community.d2l.com/brightspace/kb/articles/26161-creator-data-sets#creator-practices-engagement
CREATE TABLE "creator_practices_engagement" (
    "practiceengagementid" INTEGER NOT NULL,
    "userid" INTEGER,
    "orgunitid" INTEGER,
    "completionstatus" VARCHAR(10),
    "activityinstanceid" INTEGER,
    "completiondate" TIMESTAMP(6),
    "version" BIGINT,
    PRIMARY KEY ("practiceengagementid")
);
CREATE INDEX "ix_creator_practices_engagement_userid" ON "creator_practices_engagement" ("userid");
CREATE INDEX "ix_creator_practices_engagement_orgunitid" ON "creator_practices_engagement" ("orgunitid");
CREATE INDEX "ix_creator_practices_engagement_activityinstanceid" ON "creator_practices_engagement" ("activityinstanceid");
