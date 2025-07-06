extends CharacterBody2D

#Define la velocidad con la que se mueve al spawnear
var velocidad = 10

#Permite que se mueva atravez de la pantalla
func _process(delta: float) -> void:
	velocity.x -= velocidad
	move_and_slide()

#Causa que pierda el juego al chocar la nave contra un obstaculo 
func _on_area_2d_body_entered(body: Node2D) -> void:
	if body.name== "Navecita":
		velocidad = 0 
		body.gameOver()

#Causa que pierda el juego al chocar la nave contra un obstaculo 
func _on_area_2d_2_body_entered(body: Node2D) -> void:
	if body.name== "Navecita":
		velocidad = 0 
		body.gameOver()
