extends CharacterBody2D
var speed = 40
@export var anim: AnimatedSprite2D
func _physics_process(_delta):
	var input = Vector2(Input.get_action_strength('ui_right') - Input.get_action_strength('ui_left'), Input.get_action_strength('ui_down') - Input.get_action_strength('ui_up'))
	velocity = input.normalized() * speed
	# Сюда код ниже
	move_and_slide()
