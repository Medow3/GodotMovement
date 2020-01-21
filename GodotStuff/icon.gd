extends KinematicBody2D

func _physics_process(delta: float) -> void:
	var vel = Vector2(300, 0)
	move_and_slide(vel)