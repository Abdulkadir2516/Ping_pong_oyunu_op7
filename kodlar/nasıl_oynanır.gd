extends ColorRect

func _on_text_edit_gui_input(event: InputEvent) -> void:
	if event is InputEventKey and event.pressed:
		var keycode = event.physical_keycode
		var key_name = OS.get_keycode_string(keycode)

		# Tuşun adını yazdır (debug)
		print("Basilan tuş: ", key_name)

		# Girdi haritasına ekle (örnek aksiyon: "my_action")
		var action_name = "yukarı git"

		if not InputMap.has_action(action_name):
			InputMap.add_action(action_name)

		var new_event = InputEventKey.new()
		new_event.physical_keycode = keycode
		InputMap.action_add_event(action_name, new_event)



func _on_button_pressed() -> void:
	get_tree().change_scene_to_file("res://sahneler/giris.tscn")
