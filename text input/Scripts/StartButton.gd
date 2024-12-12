extends TextureButton


var home_scene_path = "res://Scenes/Main.tscn"


func _pressed():

	var home_scene = load(home_scene_path)
	

	if home_scene:
		get_tree().change_scene_to(home_scene)
