extends Node

signal player_health_updated(new_player_health)
signal time_updated(time)
@export var player_health = 3
@export var time_seconds = 100
const SCENE_FINISH_FILE = "res://finish.tscn"

func game_over():
	get_tree().change_scene_to_file(SCENE_FINISH_FILE)	
	
func game_victory():
	var scene_finished_instance = preload(SCENE_FINISH_FILE).instantiate()
	scene_finished_instance.set_title("VICTORY")
	add_child(scene_finished_instance)
	
func _on_personagem_player_hit() -> void:
	if player_health >   1:
		player_health = player_health - 1
		player_health_updated.emit(player_health)
	else:
		game_over()


func _on_area_2d_body_entered(body: Node2D) -> void:
	game_victory()

func _on_timer_timeout() -> void:
	if time_seconds > 0:
		time_seconds = time_seconds - 1	
		time_updated.emit(time_seconds)
	else:
		game_over()
