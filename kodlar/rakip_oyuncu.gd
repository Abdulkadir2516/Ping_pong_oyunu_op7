extends CharacterBody2D

var hiz = 10

var top
var buton
var giris 
func _ready():
	#top değişkenine ismi top olan node u atayacağız
	top = get_parent().get_node("Top")
	giris = get_parent().get_node("giris")
	giris.visible = false
	
func _physics_process(delta):
		
	velocity = Vector2.ZERO
	
	#if Input.is_action_pressed("1"):
		#kontrol = true
	#
	#if Input.is_action_pressed("2"):
		#kontrol = false
	


	if Global.check and Input.is_action_pressed("yukarı git"):
		velocity.y = velocity.y - 1
		move_and_collide(velocity * hiz)
	if Global.check and Input.is_action_pressed("aşağı git"):
		velocity.y = velocity.y + 1
		move_and_collide(velocity * hiz)
	
	if !Global.check:
		move_and_collide(Vector2(0,rakibinyonunubelirle())*hiz)

	


func rakibinyonunubelirle():
	if abs(top.position.y - position.y ) > 35:
		if top.position.y > position.y:
			return 1
		else:
			return -1
	else:
		return 0
	
	
