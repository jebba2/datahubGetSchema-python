-- Data set: ADS Enrollments and Withdrawals (staging table)
-- Source: https://community.d2l.com/brightspace/kb/articles/4539-list-of-advanced-data-sets#enrollments-and-withdrawals
CREATE TABLE "ads_enrollments_and_withdrawals_load" (
    "logid" TEXT,
    "orgunitid" TEXT,
    "orgunitname" TEXT,
    "orgunitcode" TEXT,
    "orgunittype" TEXT,
    "userid" TEXT,
    "firstname" TEXT,
    "lastname" TEXT,
    "username" TEXT,
    "orgdefinedid" TEXT,
    "roleid" TEXT,
    "rolename" TEXT,
    "logeventtype" TEXT,
    "logdate" TEXT
);
