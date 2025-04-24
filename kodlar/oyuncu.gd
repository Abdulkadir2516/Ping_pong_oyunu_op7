extends CharacterBody2D

@export var hiz = 10
func _physics_process(delta):
	velocity = Vector2.ZERO
	#if(kosul):
	#yapılacak işlemler
	#else:
	#değil ise yapılacak işlemler
	if Input.is_action_pressed("aşağı git"):
		velocity.y = velocity.y + 1
	if Input.is_action_pressed("yukarı git"):
		velocity.y = velocity.y - 1
	move_and_collide(velocity * hiz)
