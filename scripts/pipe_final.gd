extends CharacterBody2D


var velocidad = 10

func _process(delta: float) -> void:
	velocity.x -= velocidad
	move_and_slide()

func _on_area_2d_body_entered(body: Node2D) -> void:
	if body.name== "Navecita":
		velocidad = 0 
		body.gameOver()


func _on_area_2d_2_body_entered(body: Node2D) -> void:
	if body.name== "Navecita":
		velocidad = 0 
		body.gameOver()
