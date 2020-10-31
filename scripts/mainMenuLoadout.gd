extends Node

func _ready():
	$sound.stream = load("res://sounds/menuMusic.ogg")
	$sound.play()
