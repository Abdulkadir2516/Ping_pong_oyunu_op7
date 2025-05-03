extends CharacterBody2D

var hiz = 10

var top
var kontrol = false
var buton
var giris 
func _ready():
	#top değişkenine ismi top olan node u atayacağız
	top = get_parent().get_node("Top")
	giris = get_parent().get_node("giris")
	buton = get_parent().get_node("giris").get_node("cift_kisilik")
	giris.visible = false
	
func _physics_process(delta):
	
	
	
	velocity = Vector2.ZERO
	
	if Input.is_action_pressed("1"):
		kontrol = true
	
	if Input.is_action_pressed("2"):
		kontrol = false
	
	if buton.button_pressed == true:
		kontrol = false


	if kontrol and Input.is_action_pressed("yukarı git"):
		velocity.y = velocity.y - 1
		move_and_collide(velocity * hiz)
	if kontrol and Input.is_action_pressed("aşağı git"):
		velocity.y = velocity.y + 1
		move_and_collide(velocity * hiz)
	
	if !kontrol:
		move_and_collide(Vector2(0,rakibinyonunubelirle())*hiz)

	


func rakibinyonunubelirle():
	if abs(top.position.y - position.y ) > 35:
		if top.position.y > position.y:
			return 1
		else:
			return -1
	else:
		return 0
	
	
