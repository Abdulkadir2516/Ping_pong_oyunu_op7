extends CharacterBody2D

var hiz = 10

var top

func _ready():
	#top değişkenine ismi top olan node u atayacağız
	top = get_parent().get_node("Top")
	
func _physics_process(delta):
	move_and_collide(Vector2(0,rakibinyonunubelirle())*hiz)


func rakibinyonunubelirle():
	if abs(top.position.y - position.y ) > 35:
		if top.position.y > position.y:
			return 1
		else:
			return -1
	else:
		return 0
	
	
