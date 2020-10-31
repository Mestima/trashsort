extends Node

func _ready():
	$sound.stream = load("res://sounds/dogMusic.ogg")
	$sound.play()

# warning-ignore:unused_argument
func _physics_process(delta):
	if Input.is_action_just_pressed("ui_cancel"):
		_G.loadScene("MainMenu")
