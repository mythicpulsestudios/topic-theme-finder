extends TextureButton


func _on_ExitButton_pressed():

	var next_scene = load("res://Scenes/Main Menu.tscn")
	

	get_tree().change_scene_to(next_scene)
