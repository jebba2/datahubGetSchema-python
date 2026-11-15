-- Data set: Creator+ Practices Adoption (staging table)
-- Source: https://community.d2l.com/brightspace/kb/articles/26161-creator-data-sets#creator-practices-adoption
CREATE TABLE "creator_practices_adoption_load" (
    "activityinstanceid" INTEGER NOT NULL,
    "createdbyid" INTEGER,
    "orgunitid" INTEGER,
    "practicetype" VARCHAR(32),
    "practicetitle" VARCHAR(255),
    "providerobjectid" INTEGER,
    "createddate" TIMESTAMP(6),
    "version" BIGINT,
    PRIMARY KEY ("activityinstanceid")
);
