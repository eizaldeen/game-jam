extends KinematicBody2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"
var gravity = 10
var speed = 200
var m = Vector2()
# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.
func _physics_process(delta):
	if Input.is_action_pressed("ui_left"):
		m.x = -speed
		$AnimatedSprite.play("move")
		$AnimatedSprite.flip_h = true
	elif Input.is_action_pressed("ui_right"):
		m.x = speed
		$AnimatedSprite.play("move")
		$AnimatedSprite.flip_h = false
	else:
		m.x = 0
	if is_on_floor() == false:
		m.y += gravity
	elif is_on_floor() == true && Input.is_action_pressed("ui_up"):
		
		m.y = -600
	move_and_slide(m,Vector2.UP)
	
	
#thats it...
#idk what else to say
# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
