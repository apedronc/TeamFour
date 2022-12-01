extends Node2D

onready var HungryMan = load("res://Enemy/HungryMan.tscn")

func _physics_process(_delta):
	if get_child_count() == 0:
		var hunger = HungryMan.instance()
		hunger.position = Vector2(Global.VP.x/2,Global.VP.y/2)
		add_child(hunger)
