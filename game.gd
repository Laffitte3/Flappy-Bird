extends Node

var scene= preload("res://obstaculos.tscn")

func _on_timer_timeout():
	
	var clon = scene.instantiate()
	clon.position.x = 150
	add_child(clon)
