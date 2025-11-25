-- Staging para cargar CSV
CREATE TABLE IF NOT EXISTS staging_telemetry (
  "timestamp" timestamptz,
  tic         integer,
  pos_x       double precision,
  pos_y       double precision,
  pos_z       double precision,
  game_id     uuid,
  map_id      uuid,
  player_id   uuid
);