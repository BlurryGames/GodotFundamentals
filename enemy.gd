class_name Enemy extends Area2D

@onready var polygon: Polygon2D = $Polygon2D

func _init() -> void:
	body_entered.connect(_on_body_entered)

func _ready() -> void:
	set_rotation_degrees(randf_range(0.0, 360.0))
	polygon.color.s = 0.5
	polygon.color.h = randf()

func _on_body_entered(body: Node2D) -> void:
	if body is RigidBody2D:
		body.queue_free()
		polygon.set_color(Color.WHITE)
		set_scale(get_scale() * 1.5)
		set_collision_mask(0)
		await get_tree().create_timer(0.05).timeout
		queue_free()
