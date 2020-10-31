extends Node

func exit():
	get_tree().quit()

func loadScene(scene):
	#warning-ignore:return_value_discarded
	var path = "res://scenes/"+scene+".tscn"
	get_tree().change_scene(path)

func loadLevel(lvl):
	var l = load("res://scenes/"+lvl+".tscn").instance()
	get_tree().get_root().add_child(l)

func unloadLevel(lvl):
	var rootnode = get_tree().get_root().get_children()
	for v in rootnode:
		if v.get_name() == lvl:
			get_tree().get_root().remove_child(v)
			
func hideMenuButts():
	PlayBtn.hide()
	AuthorsBtn.hide()
	ExitBtn.hide()

func showMenuButts():
	PlayBtn.show()
	AuthorsBtn.show()
	ExitBtn.show()

var PlayBtn
var AuthorsBtn
var ExitBtn
var cans
var currentTrashType = 'none'
var score = 0
var dogLevel = 0

func updateScore(v):
	score = int(v)

var trash = {
	1: ['res://sprites/trash/plasticbottle.png', 'plastic'],
	2: ['res://sprites/trash/glassbottle.png', 'glass'],
	3: ['res://sprites/trash/metalcan.png', 'other'],
	4: ['res://sprites/trash/newspaper.png', 'paper']
}
