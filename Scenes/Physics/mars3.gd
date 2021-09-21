extends RigidBody2D

# Declare member variables here. Examples:
# var a = 2
# var b = "text"
var G = 6.67e-11

# Called when the node enters the scene tree for the first time.
func _ready():
	#var moon = RigidBody2D.new()
	#moon.position = Vector2(1450, 0)
	#add_child(moon)
	#moon.set_mass(1e10)
	#Moon
	#get_node(".").set_mass(1e10)
	#var m = get_parent().get_mass()
	#get_node(".").set_linear_velocity(Vector2(0, sqrt(G*m/3.64)))
	pass # Replace with function body.

func _physics_process(delta):
	var planets = [get_node(".")]
	var i = 0
	for planet in planets:
		#position
		var pos = get_parent().position - planet.position
	
		#planet.position = Vector2(pos.x, pos.y)
		var r = sqrt(pow(pos.x, 2)+pow(pos.y, 2))
		#var dist = sqrt((pos_y*pos_y)+(pos_x*pos_x))
		var force_x = (G*get_parent().get_mass()*planet.get_mass()*pos.x) / (pow(r, 3))
		var force_y = (G*get_parent().get_mass()*planet.get_mass()*pos.y) / (pow(r, 3))
		var force = Vector2(force_x, force_y)
		#interaction between 
		#var bodies = 0
		#if i > 0:
		#	bodies = planets.slice(0, i-1) + planets.slice(i+1, -1)	
		#else:
		#	bodies = planets.slice(1,-1)
		#var force = Vector2(force_x,force_y)
		#for body in bodies:
		#	force += Vector2(force_x1,force_y1)
		planet.set_applied_force(force)
		#i += 1

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
