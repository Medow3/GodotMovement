extends KinematicBody2D

export (int) var speed = 200

var velocity = Vector2()


func _input(event):
	# Mouse in viewport coordinates
	if event is InputEventMouseButton:
		print("Mouse Click/Unclick at: ", event.position)
		velocity = event.position
	elif event is InputEventMouseMotion:
		print("Mouse Motion at: ", event.position)
		velocity = event.position
   # Print the size of the viewport
	velocity = velocity.normalized() * speed

func _physics_process(delta):
	velocity = Vector2()
	velocity = move_and_slide(velocity)