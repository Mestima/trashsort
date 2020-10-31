extends Button

func _ready():
	_G.PlayBtn = self

func _pressed():
	_G.loadScene('Playground')
