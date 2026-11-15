-- Data set: Release Condition Objects (staging table)
-- Source: https://community.d2l.com/brightspace/kb/articles/4533-release-conditions-data-sets#release-condition-objects
CREATE TABLE "release_condition_objects_load" (
    "prerequisiteid" INTEGER NOT NULL,
    "resultid" INTEGER NOT NULL,
    "orgunitid" INTEGER NOT NULL,
    "name" VARCHAR(64),
    "isnegativecondition" BOOLEAN,
    "prerequisitetoolid" INTEGER,
    "id1" INTEGER,
    "id2" INTEGER,
    "resulttoolid" INTEGER,
    "usespercentage" BOOLEAN,
    "operatortypedesc" VARCHAR(3),
    "version" BIGINT,
    "guid1" UUID,
    "guid2" UUID,
    PRIMARY KEY ("prerequisiteid", "resultid", "orgunitid")
);
