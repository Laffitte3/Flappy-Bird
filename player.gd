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
	
	get_tree().reload_current_scene()
	
func SubirScore():
	score += 1
	print(score)
