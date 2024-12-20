class_name PacManDot extends Node2D

signal collected

func _on_hitbox_pacman_entered(pacman: PacMan) -> void:
	collected.emit()
	queue_free()
