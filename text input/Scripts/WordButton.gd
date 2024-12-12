extends TextureButton


func _on_WordButton_pressed():

	var next_scene = load("res://Scenes/WordsLevel.tscn")
	

	get_tree().change_scene_to(next_scene)
