CREATE TABLE IF NOT EXISTS "schema_migrations" ("version" varchar NOT NULL);
CREATE UNIQUE INDEX "unique_schema_migrations" ON "schema_migrations" ("version");
CREATE TABLE sqlite_sequence(name,seq);
CREATE TABLE IF NOT EXISTS "taxis" ("id" INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, "name" varchar, "created_at" datetime NOT NULL, "updated_at" datetime NOT NULL);
CREATE TABLE IF NOT EXISTS "rides" ("id" INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, "taxi_id" integer, "passenger_id" integer, "created_at" datetime NOT NULL, "updated_at" datetime NOT NULL);
CREATE TABLE IF NOT EXISTS "passengers" ("id" INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, "name" varchar, "created_at" datetime NOT NULL, "updated_at" datetime NOT NULL);
INSERT INTO schema_migrations (version) VALUES ('20140212204456');

INSERT INTO schema_migrations (version) VALUES ('20140212205242');

INSERT INTO schema_migrations (version) VALUES ('20140212205318');

