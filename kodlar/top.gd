extends CharacterBody2D

@export var hiz = 10
func _ready():
	#0 ile 50 arasında rastgele sayı oluşturma
	#randi fonksiyonu rastgele sayı oluşturmak için kullanılır
	#print(randi() % 50)
	#print(randi() % 16)
	velocity.x = [-1,1][randi() % 2]
	velocity.y = [-1,1][randi() % 2]

func _physics_process(delta):
	var carpısannesne = move_and_collide(velocity*hiz)
	if carpısannesne:
		velocity = velocity.bounce(carpısannesne.get_normal())

#topu durdurabilmemizi sağlayacak olan fonksiyon
func topudurdur():
	hiz = 0

#topu tekrardan başlatabilmemizi sağlayacak olan fonksiyon
func toputekrarbaslat():
	hiz = 10
