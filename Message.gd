extends Sprite2D


func _input(event):
	
	if Input.is_action_just_pressed("Salto") and get_tree().paused:
		
		get_tree().paused = false
		get_tree().reload_current_scene()
		
