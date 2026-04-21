class_name Dummy_Object
extends Sprite2D

var velocidad = 10

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	mover(delta)
	pass
	
func mover(delta: float) -> void:
	position.x += velocidad*delta
	
