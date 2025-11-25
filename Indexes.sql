-- Índices recomendados

-- 1) Trayectorias por (game, player, tic)
CREATE INDEX IF NOT EXISTS idx_tevt_game_player_tic
  ON telemetry_event (game_id, player_id, tic);

-- 2) Heatmap (grilla 250x250)
CREATE INDEX IF NOT EXISTS idx_tevt_grid_250
  ON telemetry_event (map_id, game_id, floor(pos_x/250.0), floor(pos_y/250.0));

-- 3) Agregados por (game, map, tic)
CREATE INDEX IF NOT EXISTS idx_tevt_game_map_tic
  ON telemetry_event (game_id, map_id, tic);
