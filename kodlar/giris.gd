extends Node2D


func _on_tek_kisilik_pressed() -> void:
	get_tree().change_scene_to_file("res://sahneler/bölüm.tscn")




func _on_cift_kisilik_pressed() -> void:
	
	
	if $cift_kisilik.button_pressed == true:
		get_tree().change_scene_to_file("res://sahneler/bölüm.tscn")
