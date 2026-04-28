class_name Enemy extends Area2D

func _init() -> void:
	body_entered.connect(_on_body_entered)

func _on_body_entered(body: Node2D) -> void:
	if body is RigidBody2D:
		body.queue_free()
		queue_free()
