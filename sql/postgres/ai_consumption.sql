-- Data set: AI Consumption
-- Source: https://community.d2l.com/brightspace/kb/articles/34440-ai-consumption-data-sets#ai-consumption
CREATE TABLE "ai_consumption" (
    "consumptionid" VARCHAR(255) NOT NULL,
    "userid" INTEGER,
    "orgunitid" INTEGER,
    "date" TIMESTAMP(6),
    "generationcount" INTEGER,
    "consumptionsource" INTEGER,
    PRIMARY KEY ("consumptionid")
);
CREATE INDEX "ix_ai_consumption_userid" ON "ai_consumption" ("userid");
CREATE INDEX "ix_ai_consumption_orgunitid" ON "ai_consumption" ("orgunitid");
