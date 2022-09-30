BEGIN;

CREATE TABLE IF NOT EXISTS
  "tenants" (
    "id" BIGSERIAL PRIMARY KEY,
    "name" TEXT UNIQUE NOT NULL,
    "description" TEXT,
    "created_at" timestamp NOT NULL DEFAULT now(),
    "updated_at" timestamp NOT NULL DEFAULT now()
  );

COMMIT;