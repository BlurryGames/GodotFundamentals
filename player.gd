class_name Player extends Node2D

@export var bullet_scene: PackedScene = null

@onready var polygon: Polygon2D = $Polygon2D

func _ready() -> void:
	print("Hello World!")

func _process(_delta: float) -> void:
	look_at(get_global_mouse_position())

func _input(event: InputEvent) -> void:
	if event is InputEventMouseButton and event.is_pressed():
		var bullet: RigidBody2D = bullet_scene.instantiate()
		add_child(bullet)
		bullet.set_global_transform(get_global_transform())
		bullet.apply_central_impulse(get_global_transform().x * 1_000.0)
		var tween: Tween = create_tween()
		tween.tween_property(polygon, ^"position", Vector2.ZERO, 0.2).from(Vector2(-32.0, 0.0))
