extends Node

signal score_changed

@onready var _score = 0

func add(points: int) -> int:
	_score += points
	score_changed.emit(_score)
	return _score

func sub(points: int) -> int:
	return add(points * (-1))

func reset() -> int:
	return sub(_score)

func get_points() -> int:
	return _score
