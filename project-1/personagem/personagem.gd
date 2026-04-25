class_name personagem extends CharacterBody2D

signal player_hit()

@export var SPEED = 300.0
@export var JUMP_VELOCITY = -500.0
@export var SPRITE: Sprite2D



func _physics_process(delta: float) -> void:
	var direction = Input.get_axis("izquierda","derecha")
	
	velocity.x = SPEED*direction
	
	if direction != 0:
		$Sprite2D.scale.x = direction
	
	# Add the gravity.
	if not is_on_floor():
		velocity += get_gravity() * delta	
		
	var jump_pressed = Input.is_action_just_pressed("saltar")
	if jump_pressed:
		velocity.y = velocity.y + JUMP_VELOCITY 

	move_and_slide()


func _on_area_2d_body_entered(body: Node2D) -> void:
	print("Um corpo entrou: " + body.name )
	pass # Replace with function body.
	
func damage_received():
		print("Daño recibido")
		player_hit.emit()
