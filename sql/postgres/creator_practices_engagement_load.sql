-- Data set: Creator+ Practices Engagement (staging table)
-- Source: https://community.d2l.com/brightspace/kb/articles/26161-creator-data-sets#creator-practices-engagement
CREATE TABLE "creator_practices_engagement_load" (
    "practiceengagementid" INTEGER NOT NULL,
    "userid" INTEGER,
    "orgunitid" INTEGER,
    "completionstatus" VARCHAR(10),
    "activityinstanceid" INTEGER,
    "completiondate" TIMESTAMP(6),
    "version" BIGINT,
    PRIMARY KEY ("practiceengagementid")
);
