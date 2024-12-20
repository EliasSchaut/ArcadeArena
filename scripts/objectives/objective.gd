class_name Objective extends Node2D

signal died

@export var health: float
@export var damage: float
@export var score_reward: int
@export var target: Globals.Heros

@onready var color: Globals.Colors = Globals.Colors.White
# @onready var hitbox := $Hitbox
# @onready var sprite := $Sprite2D

func _ready() -> void:
	# hitbox.collision_mask = target
	pass

func kill() -> void:
	died.emit()
	queue_free()
