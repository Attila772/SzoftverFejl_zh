extends Node

var ui_is_up = false
# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if(Input.is_action_just_pressed("ui_select") and get_tree().paused == false):
		get_tree().paused=true
	elif(Input.is_action_just_pressed("ui_select")):
		get_tree().paused=false
		
		
	if(Input.is_action_just_released("ui_cancel")) and !Global.ui_is_up:
		get_tree().paused=true
		Global.ui_is_up = true
		var add_pont_node = load("res://Ui/Node2D.tscn").instance()
		get_parent().get_node("Rocket/Camera").add_child(add_pont_node)
	pass
