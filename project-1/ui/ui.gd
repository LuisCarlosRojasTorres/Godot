extends CanvasLayer

const FULL_HEART = preload("res://assets/kenney/ui/tile_heart_morado.png")
const EMPTY_HEART = preload("res://assets/kenney/ui/tile_heart_empty.png")

func _ready() -> void:
	$HBoxContainer/Heart1.texture = FULL_HEART
	$HBoxContainer/Heart2.texture = FULL_HEART
	$HBoxContainer/Heart3.texture = FULL_HEART
	
	

func _on_game_controller_player_health_updated(new_player_health: Variant) -> void:
	if new_player_health == 2:		
		$HBoxContainer/Heart3.texture = EMPTY_HEART
	elif new_player_health == 1:
		$HBoxContainer/Heart2.texture = EMPTY_HEART
	elif new_player_health == 0:
		$HBoxContainer/Heart1.texture = EMPTY_HEART
	


func _on_game_controller_time_updated(time: Variant) -> void:
	$TextureRect/Label_Time.text = "Time: " + str(time)
