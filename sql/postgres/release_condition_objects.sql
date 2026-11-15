-- Data set: Release Condition Objects
-- Source: https://community.d2l.com/brightspace/kb/articles/4533-release-conditions-data-sets#release-condition-objects
CREATE TABLE "release_condition_objects" (
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
CREATE INDEX "ix_release_condition_objects_orgunitid" ON "release_condition_objects" ("orgunitid");
CREATE INDEX "ix_release_condition_objects_prerequisitetoolid" ON "release_condition_objects" ("prerequisitetoolid");
CREATE INDEX "ix_release_condition_objects_resulttoolid" ON "release_condition_objects" ("resulttoolid");
