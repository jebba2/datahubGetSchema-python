-- Data set: ADS Impersonated Session History (staging table)
-- Source: https://community.d2l.com/brightspace/kb/articles/4539-list-of-advanced-data-sets#impersonated-session-history
CREATE TABLE "ads_impersonated_session_history_load" (
    "sessionid" INTEGER,
    "userid" INTEGER,
    "username" VARCHAR(540),
    "datestarted" TIMESTAMP(6),
    "dateended" TIMESTAMP(6),
    "impersonatinguserid" INTEGER,
    "impersonatingusername" VARCHAR(540)
);
