-- Data set: ADS Instructor Usage (staging table)
-- Source: https://community.d2l.com/brightspace/kb/articles/4539-list-of-advanced-data-sets#instructor-usage
CREATE TABLE "ads_instructor_usage_load" (
    "username" TEXT,
    "firstname" TEXT,
    "lastname" TEXT,
    "orgdefinedid" TEXT,
    "userid" TEXT,
    "rolename" TEXT,
    "roleid" TEXT,
    "isactive" TEXT,
    "courseofferingname" TEXT,
    "courseofferingcode" TEXT,
    "courseofferingid" TEXT,
    "numberofcontenttopicsvisited" TEXT,
    "lastaccesstocourseofferingcontent" TEXT,
    "numberofassignments" TEXT,
    "numberofassignmentsubmissionscommentedon" TEXT,
    "numberofgradeitems" TEXT,
    "numberofgradedgradeitems" TEXT,
    "lastmodificationofagradeitem" TEXT,
    "numberofdiscussionposts" TEXT,
    "numberofdiscussionpostsauthored" TEXT,
    "lastdiscussionpostdate" TEXT,
    "lastaccesstocourseoffering" TEXT,
    "numberofloginstothesystem" TEXT,
    "lastsentmaildate" TEXT
);
