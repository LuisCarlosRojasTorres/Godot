class_name Boss extends Node2D

@onready var animation_player = $AnimationPlayer
const ESCENA_BARRIL = preload("res://enemies/barril.tscn")


func launch_barrel():
	var instanciar_barril = ESCENA_BARRIL.instantiate()
	instanciar_barril.position = $CharacterSquareRed/CharacterHandRed.position
	add_child(instanciar_barril)
	animation_player.play("reposo")


func _on_timer_timeout() -> void:
	animation_player.play("lanzar")
	
