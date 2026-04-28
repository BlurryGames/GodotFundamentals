class_name Bullet extends RigidBody2D

@export var timer: Timer = null

@onready var trail_pivot: Marker2D = $TrailPivot

func _enter_tree() -> void:
	if is_instance_valid(timer):
		timer.timeout.connect(_on_timeout)

func _process(delta: float) -> void:
	trail_pivot.scale.x += 4.0 * delta

func _on_timeout() -> void:
	queue_free()
