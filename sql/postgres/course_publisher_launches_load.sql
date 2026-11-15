-- Data set: Course Publisher Launches (staging table)
-- Source: https://community.d2l.com/brightspace/kb/articles/4524-course-publisher-data-sets#course-publisher-launches
CREATE TABLE "course_publisher_launches_load" (
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
