extends Node


# Called when the node enters the scene tree for the first time.
func _ready() -> void:


	# Crear empty Array
	var dummy_array = []
	dummy_array = [1,2,3]
	print(dummy_array)
	print(dummy_array[0])
	print(dummy_array.size())
	


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
