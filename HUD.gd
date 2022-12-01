extends Control

var lives_pos = Vector2.ZERO
var lives_index = 30
onready var Indicator = load("res://UI/Indicator.tscn")

func _ready():
	lives_pos.x = 20
	lives_pos.y = Global.VP.y - 20
	update_score()
	update_time()


func update_score():
	$Score.text = "Score: " + str(Global.score)

func update_time():
	$Time.text = "Time: " + str(Global.time)



func _on_Timer_timeout():
	Global.time -= 1
	update_time()
	if Global.time <= 0:
		var _scene = get_tree().change_scene("res://UI/End_Game.tscn")
