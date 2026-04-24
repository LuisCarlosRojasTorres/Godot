class_name Barril
extends RigidBody2D

@export var limit_to_be_destroyed = 1000
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	print("- Barril criado")
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if position.y > limit_to_be_destroyed:
		queue_free()
	pass
	
func _physics_process(delta: float) -> void:
	pass
