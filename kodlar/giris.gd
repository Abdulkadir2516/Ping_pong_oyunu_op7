extends Node2D

func _on_tek_kisilik_pressed() -> void:
	Global.check = false
	get_tree().change_scene_to_file("res://sahneler/bölüm.tscn")
	

	
func _on_cift_kisilik_pressed() -> void:
	Global.check = true
	get_tree().change_scene_to_file("res://sahneler/bölüm.tscn")


	


func _on_nasıl_oynanir_pressed() -> void:
	get_tree().change_scene_to_file("res://sahneler/nasıl_oynanır.tscn")
