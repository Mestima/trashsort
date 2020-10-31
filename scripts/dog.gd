extends Node2D

func _ready():
	get_node('./cloud/tail').play()
	$anim.play('idle')
