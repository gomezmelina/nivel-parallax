extends Node

@onready var r1 = $r1
@onready var r2 = $r2
@onready var spawn = $spawn
@onready var pipe = preload("res://scenes/pipe_final.tscn")

func _ready() -> void:
	$Timer.start()

func _on_timer_timeout() -> void:
	if $Navecita.puedeVolar: 
		var objeto = pipe.instantiate()
		objeto.global_position.x = spawn.global_position.x
		
		objeto.global_position.y = randi_range(r1.global_position.y, r2.global_position.y)
		add_child(objeto)


func _on_limite_body_entered(body: Node2D) -> void:
	body.queue_free() 
