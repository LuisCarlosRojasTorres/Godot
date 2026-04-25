extends CanvasLayer

const LEVEL_1_FILE = "res://level_1.tscn"
func set_title(text):
	$VBoxContainer/Label.text = text

func _on_button_button_down() -> void:
	#Deletes the current scene and add a new scene
	get_tree().change_scene_to_file(LEVEL_1_FILE)
	pass # Replace with function body.
