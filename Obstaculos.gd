extends Node2D

var speed := 100


# Called when the node enters the scene tree for the first time.
func _ready():
	randomize()
	position.y = randf_range(-135.0,189.0)


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	position.x -= speed * delta
	
	if position.x < -400 :
		queue_free()
		
	
func _on_tuberia_1_body_entered(body):
	if body.is_in_group("Player"):
		body.morir()
		print("choque con tuberia de abajo")

func _on_tuberia_2_body_entered(body):
	if body.is_in_group("Player"):
		body.morir()
		print("choque con tuberia de arriba")


func _on_score_body_entered(body):
	if body.is_in_group("Player"):
		body.SubirScore()
		print("choque con el score")
