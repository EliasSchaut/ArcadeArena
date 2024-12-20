extends CanvasLayer

const SCORE_TEXT := "Score: "

@onready var score_label = %ScoreLabel

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	Score.score_changed.connect(_set_score_label)
	_set_score_label(Score.get_points())

func _set_score_label(score: int) -> void:
	score_label.text = SCORE_TEXT + str(score) + " "
