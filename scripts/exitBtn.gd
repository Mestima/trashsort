extends Button

func _ready():
	_G.ExitBtn = self

func _pressed():
	_G.exit()
