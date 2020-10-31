extends Label

# warning-ignore:unused_argument
func _physics_process(delta):
	text = "Ваш счет: " + str(_G.score)
