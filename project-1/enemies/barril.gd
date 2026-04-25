class_name Barril extends RigidBody2D

const BARREL_RED = preload("res://assets/kenney/enemies/barrel_red.png")
@export var limit_to_be_destroyed = 1000
var damage_done = false

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if position.y > limit_to_be_destroyed:
		queue_free()
	

func _on_body_entered(body: Node) -> void:
	if body is personagem:
		if not damage_done:
			print("Contact!!")
			damage_done = true
			$BarrelYellow.texture = BARREL_RED
			if body.has_method("damage_received"):
				body.damage_received()
	
