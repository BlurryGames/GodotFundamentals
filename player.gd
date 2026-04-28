class_name Player extends Node2D

func _ready() -> void:
	print("Hello World!")

func _process(_delta: float) -> void:
	look_at(get_global_mouse_position())

func _input(event: InputEvent) -> void:
	if event is InputEventMouseButton:
		if event.is_pressed():
			print("Shoot!")
