extends CharacterBody2D


@export var velocidad_salto = -120
@export var gravedad = 9.8
var puedeVolar = true

func _physics_process(delta: float) -> void:
	#Habilita a la navecita a flotar
	if not is_on_floor():
		velocity.y += gravedad
	#Activa la animacion
	$AnimatedSprite2D.play("default")
	#Hace que salte con el click izquierdo
	if Input.is_action_pressed("click"):
		velocity.y = velocidad_salto
	
	move_and_slide()

#Permite al juego perder
func gameOver():
	#Detiene el spawneo de los obstaculos
	puedeVolar = false
	get_parent().get_child(5).queue_free()
	velocidad_salto = 0 
	get_tree().paused = true
	
