extends Button


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	
	self.connect("pressed", self, "_button_pressed")
	pass # Replace with function body.

func _button_pressed():
	var text = get_parent().get_node("TextEdit").text
	var Split = text.split(",")
	var x = int(Split[0])
	var y = int(Split[1])
	var z = int(Split[2])
	
	
	get_parent().get_parent().get_parent().get_parent().get_parent().get_node("Earth").readpoints(x,y,z)
	get_tree().paused=false
	Global.ui_is_up = false
	get_parent().get_parent().get_parent().remove_child(get_parent().get_parent())
# Called every frame. 'delta' is the elapsed time since the previous frame.

