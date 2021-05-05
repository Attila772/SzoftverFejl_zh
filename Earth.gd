extends Spatial

var x_max=100
var x_min=-100
var y_max =100
var y_min = -100
var points
var rocket
var t =0.0
var rocket_dist_from_earth
var new_point
var got_new_point = false
# Declare member variables here. Examples:
# var a = 2
# var b = "text"

var point1_rd 
var point2_ru
var point3_ld
var point4_lu

# Called when the node enters the scene tree for the first time.
func _ready():
	
	point1_rd =get_parent().get_node("Spatial").transform.origin
	point2_ru=get_parent().get_node("Spatial2").transform.origin
	point3_ld=get_parent().get_node("Spatial5").transform.origin
	point4_lu=get_parent().get_node("Spatial6").transform.origin
	points = [point1_rd,point3_ld,point2_ru,point4_lu]
	#Spatial , Spatial5 , Spatial2 , Spatial6
	
	pass # Replace with function body.


func _process(delta):
	
	rocket = get_parent().get_node("Rocket")
	t += delta*0.4
	rocket_dist_from_earth = translation.distance_to(rocket.translation)
	var movementvector = (points[0]-rocket.transform.origin).normalized()*20
	
	
	rocket.look_at(Vector3(0,0,0),Vector3(0,0,1))
	rocket.transform.origin = rocket.transform.origin*(110/rocket.transform.origin.distance_to(Vector3(0,0,0)))
	
	if(got_new_point):
		rocket.move_and_slide(new_point-rocket.transform.origin).normalized()*40
		get_parent().get_node("Rocket/Camera/Coordinate").text = str(new_point)
		if(rocket.transform.origin.distance_to(new_point)<50):
			got_new_point = false
	rocket.move_and_slide((points[0]-rocket.transform.origin).normalized()*40)
	if(!got_new_point):
		get_parent().get_node("Rocket/Camera/Coordinate").text = str(points[0])
	if(points[0].distance_to(rocket.transform.origin)<20):
		updatepoints()
# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
func updatepoints():
	points.append(points[0])
	points.pop_front()

func readpoints(x,y,z):
	
	new_point= Vector3(float(x),float(y),float(z))
	got_new_point = true

	pass
	
