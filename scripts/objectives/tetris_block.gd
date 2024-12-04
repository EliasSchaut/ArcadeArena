extends Objective

const dot_scene = preload("res://scenes/heros/abilities/pacman_dot.tscn")

@onready var marker_collection := $Marker
@onready var dot_collection := $Dots
@onready var dots_count: int

func _ready() -> void:
	var markers: Array[Node] = marker_collection.get_children()
	dots_count = markers.size()

	for i in range(dots_count):
		var dot = dot_scene.instantiate()
		dot.name = "Dot " + str(i)
		dot.position = markers[i].position
		dot.collected.connect(_on_dot_collected)
		dot_collection.add_child(dot)

func _on_dot_collected():
	dots_count -= 1

	if dots_count <= 0:
		kill()
