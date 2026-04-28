class_name Level extends Node2D

@export var timer: Timer = null

@export var enemy_scene: PackedScene = null

func _enter_tree() -> void:
	if is_instance_valid(timer):
		timer.timeout.connect(_on_timeout)

func _on_timeout() -> void:
	var enemy: Enemy = enemy_scene.instantiate()
	add_child(enemy)
	enemy.set_global_position(Vector2(randf_range(-500.0, 500.0), randf_range(-300.0, 300.0)))
