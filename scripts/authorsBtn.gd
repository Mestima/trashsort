extends Button

func _ready():
	_G.AuthorsBtn = self

func _pressed():
	_G.loadLevel("Authors")
	_G.hideMenuButts()
