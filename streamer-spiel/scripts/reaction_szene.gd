extends Node2D

signal closed

func _on_quit_reaction_pressed() -> void:
	emit_signal("closed")
	queue_free()
