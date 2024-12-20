extends Objective

const DOT_CELL_SCENE_SOURCE_ID := 1

@onready var tile_map = $TileMapLayer
@onready var dots_count: int = 0

func _ready() -> void:
	for cell in tile_map.get_used_cells_by_id(DOT_CELL_SCENE_SOURCE_ID):
		var tile = tile_map.get_cell_alternative_tile(cell)
		print(tile)
		# var scene = tile.get_scene()

func _on_dot_collected():
	dots_count -= 1

	if dots_count <= 0:
		kill()
