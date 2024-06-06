extends RigidBody2D


var speed := 200
#var salto :=Vector2(0,-speed)
var  velocidad_lineal
var score : int = 0

func _integrate_forces(state):
	$AnimatedSprite2D.play("flap")	
	if Input.is_action_just_pressed("Salto"):
		velocidad_lineal=Vector2(0,-speed)
		apply_central_impulse(velocidad_lineal)
		#position.y -= speed
	else:
		velocidad_lineal=Vector2(0,0)
		
	print(velocidad_lineal)
		
		
func morir():
	get_tree().paused = true 
	$"../Message".show()
	$"../Message/Gameover".show()

func SubirScore():
	score += 1
	$"../scotreLabel".text = str(score)


func _on_detecta_suelo_y_techo_body_entered(body):
	if body.is_in_group("suelo y techo"):
		morir()
 
