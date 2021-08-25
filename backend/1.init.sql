CREATE TABLE IF NOT EXISTS events (
    "event_id" serial NOT NULL PRIMARY KEY,
    "ts" timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "uuid" uuid NOT NULL,
    "body" jsonb NOT NULL,
    CONSTRAINT unique_event_uuid UNIQUE ("uuid")
);
