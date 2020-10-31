extends Node

func _pressed():
	_G.dogLevel += 1
	if _G.dogLevel == 3:
		_G.dogLevel = 0
		_G.loadScene("dog")
