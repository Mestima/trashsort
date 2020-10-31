extends TextureButton

onready var anim = get_node('../../anim')
onready var animWinLose = get_node('../../winloseAnim')
onready var game = get_node('../../../Playground')
onready var sound = get_node('../../sound')

func _pressed():
	if _G.currentTrashType == 'other' && _G.currentTrashType != 'none':
		anim.play('onUnload')
		animWinLose.play("win")
		_G.updateScore(_G.score+1)
		_G.currentTrashType = 'none'
		sound.stream = load("res://sounds/win.wav")
		sound.play()
	else:
		if(_G.currentTrashType != 'none'):
			anim.play('onUnload')
			animWinLose.play("lose")
			_G.updateScore(0)
			_G.currentTrashType = 'none'
			sound.stream = load("res://sounds/lose.wav")
			sound.play()
