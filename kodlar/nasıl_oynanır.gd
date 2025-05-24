extends ColorRect


func _tus_atama(event: InputEvent, action_name: String, texedit: TextEdit):
	
	if event is InputEventKey and event.pressed:
		var keycode = event.physical_keycode
		var key_name = OS.get_keycode_string(keycode)
		
		InputMap.action_erase_events(action_name)

		var new_event = InputEventKey.new()
		new_event.physical_keycode = keycode
		
		InputMap.action_add_event(action_name, new_event)
		texedit.text = str(key_name)
		


func _on_button_pressed() -> void:
	get_tree().change_scene_to_file("res://sahneler/giris.tscn")

func _on_text_edit_gui_input(event: InputEvent) -> void:
	_tus_atama(event, "yukarı git", $Label/TextEdit)

func _on_text_edit_3_gui_input(event: InputEvent) -> void:
	_tus_atama(event, "up", $Label2/TextEdit3)

func _on_text_edit_2_gui_input(event: InputEvent) -> void:
	_tus_atama(event, "aşağı git", $Label/TextEdit2)

func _on_text_edit_4_gui_input(event: InputEvent) -> void:
	_tus_atama(event, "down", $Label2/TextEdit4)
