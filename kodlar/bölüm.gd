extends Node2D

var atilangol = -2
var yenilengol = -2
func _ready():
	$AcceptDialog.position = Vector2(1006,512)
	$AcceptDialog.visible = false
	$AcceptDialog.ok_button_text = "Devam et"
	#process_mode = Node.PROCESS_MODE_PAUSABLE
	#$AcceptDialog.add_button("Merhaba",true, "gunaydın")

func _on_sol_duvar_body_entered(body):
	$Top.position = Vector2(1006,512)
	$oyuncu.position = Vector2(45,495)
	$"rakip oyuncu".position = Vector2(1845,495)
	yenilengol +=1
	get_tree().call_group("topgrup","topudurdur")
	$"Zamanlayıcı".start()
	$"Zamanlayıcının Metni".visible =true

func _on_sağ_duvar_body_entered(body):
	$Top.position = Vector2(1006,512)
	$oyuncu.position = Vector2(45,495)
	$"rakip oyuncu".position = Vector2(1845,495)
	atilangol +=1
	get_tree().call_group("topgrup","topudurdur")
	$"Zamanlayıcı".start()
	$"Zamanlayıcının Metni".visible =true

	
func _physics_process(delta):
	$"Zamanlayıcının Metni".position =Vector2(997,188)
	$"Oyuncu Skor".text = str(atilangol)
	$"Rakip Oyuncu Skor".text = str(yenilengol)
	$"Zamanlayıcının Metni".text = str(int($"Zamanlayıcı".time_left))
	
	if atilangol == 3:
		print("Kazandınız")
		$AcceptDialog.visible = true
		$AcceptDialog.dialog_text = "Kazandınız"
		_on_pause_button_pressed()

	
	if yenilengol == 3:
		print("Kaybettiniz")
		$AcceptDialog.visible = true
		$AcceptDialog.dialog_text = "Kaybettiniz"
		_on_pause_button_pressed()

	if Input.is_action_pressed("devam et"):
		_on_close_button_pressed()
	if Input.is_action_pressed("durdur"):
		_on_pause_button_pressed()
	
func _on_zamanlayıcı_timeout():
	get_tree().call_group("topgrup","toputekrarbaslat")
	$"Zamanlayıcının Metni".visible = false

func _on_pause_button_pressed():
	$Top.topudurdur()

func _on_close_button_pressed():
	$Top.toputekrarbaslat()
