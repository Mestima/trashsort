extends Node

func _ready():
	nextCard()
	
func nextCard():
	if !$winloseAnim.is_playing():
		if _G.currentTrashType == 'none':
			randomize()
			var i = randi() % len(_G.trash) + 1
			$sprite.texture = load(_G.trash[i][0])
			_G.currentTrashType = _G.trash[i][1]
			$anim.queue("onLoad")

# warning-ignore:unused_argument
func _physics_process(delta):
	nextCard()
	if Input.is_action_just_pressed("ui_cancel"):
		_G.currentTrashType = 'none'
		_G.loadScene("MainMenu")
