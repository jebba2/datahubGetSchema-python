-- Data set: Creator+ Practices Adoption
-- Source: https://community.d2l.com/brightspace/kb/articles/26161-creator-data-sets#creator-practices-adoption
CREATE TABLE "creator_practices_adoption" (
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
CREATE INDEX "ix_creator_practices_adoption_createdbyid" ON "creator_practices_adoption" ("createdbyid");
CREATE INDEX "ix_creator_practices_adoption_orgunitid" ON "creator_practices_adoption" ("orgunitid");
