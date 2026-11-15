-- Data set: Course Publisher Launches
-- Source: https://community.d2l.com/brightspace/kb/articles/4524-course-publisher-data-sets#course-publisher-launches
CREATE TABLE "course_publisher_launches" (
    "launchid" UUID NOT NULL,
    "orgunitid" BIGINT,
    "recipientid" UUID,
    "userid" BIGINT,
    "roleid" BIGINT,
    "launchmethod" VARCHAR(256),
    "externaluserid" VARCHAR(256),
    "externallmstype" VARCHAR(256),
    "isnewuser" BOOLEAN,
    "lastmodified" TIMESTAMP(6),
    PRIMARY KEY ("launchid")
);
CREATE INDEX "ix_course_publisher_launches_orgunitid" ON "course_publisher_launches" ("orgunitid");
CREATE INDEX "ix_course_publisher_launches_recipientid" ON "course_publisher_launches" ("recipientid");
CREATE INDEX "ix_course_publisher_launches_userid" ON "course_publisher_launches" ("userid");
CREATE INDEX "ix_course_publisher_launches_roleid" ON "course_publisher_launches" ("roleid");
