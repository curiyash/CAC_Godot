extends Node2D

var R = [39, 72.3, 100, 152.4]
var G = 6.671e-11
var body2 = {mass = 1e10, position = Vector2(612, 350), velocity = Vector2()}
var body1 = {mass = 1660.1, position = Vector2(573, 350), velocity = Vector2(0, sqrt(G*body2.mass/R[0]))}
#var dy3 = {mass = 6000, position = Vector2(539.7, 350), velocity = Vector2(0, sqrt(G*body2.mass/R[1]))}
#var body4 = {mass = 30034.89596, position = Vector2(512, 350), velocity = Vector2(0, sqrt(G*body2.mass/R[2]))}
#var body5 = {mass = 3227.151, position = Vector2(459.6, 350), velocity = Vector2(0, sqrt(G*body2.mass/R[3]))}
#var bodies = [body1, body3, body4, body5]

# Declare member variables here. Examples:
# var a = 2
# var b = "text"

#var point

# Called when the node enters the scene tree for the first time.
func _ready():
	$Sun.set_mass(1e18)
	$Earth.set_mass (1e12)
	$Earth.set_linear_velocity(Vector2(0, sqrt(G*$Sun.get_mass()/500.0)))	
	$mars.set_mass (1e12)
	$mars.set_linear_velocity(Vector2(0, sqrt(G*$Sun.get_mass()/800.0)))	
	$mars2.set_mass (1e12)
	$mars2.set_linear_velocity(Vector2(0, sqrt(G*$Sun.get_mass()/1100.0)))	
	$mars3.set_mass (1e12)
	$mars3.set_linear_velocity(Vector2(0, sqrt(G*$Sun.get_mass()/1400.0)))
	$mars4.set_mass (1e12)
	$mars4.set_linear_velocity(Vector2(0, sqrt(G*$Sun.get_mass()/1700.0)))
	
	set_process(true)
	

func _physics_process(delta):
	var planets = [$Earth, $mars, $mars2, $mars3, $mars4]
	var i = 0
	for planet in planets:
		#position
		var pos = $Sun.position - planet.position
	
		#planet.position = Vector2(pos.x, pos.y)
		var r = sqrt(pow(pos.x, 2)+pow(pos.y, 2))
		#var dist = sqrt((pos_y*pos_y)+(pos_x*pos_x))
		var force_x = (G*$Sun.get_mass()*planet.get_mass()*pos.x) / (pow(r, 3))
		var force_y = (G*$Sun.get_mass()*planet.get_mass()*pos.y) / (pow(r, 3))
		#interaction between 
		var bodies = 0
		if i > 0:
			bodies = planets.slice(0, i-1) + planets.slice(i+1, -1)	
		else:
			bodies = planets.slice(1,-1)
		var force = Vector2(force_x,force_y)
		for body in bodies:
			var pos_x = body.position.x - planet.position.x
			var pos_y = body.position.y - planet.position.y
			var R = sqrt(pow(pos_x,2)+ pow(pos_y,2))
			var force_x1 = (G*body.get_mass()*planet.get_mass()*pos_x)/ (pow(R,3))
			var force_y1= (G*body.get_mass()*planet.get_mass()*pos_y)/(pow(R,3))
			force += Vector2(force_x1,force_y1)
			
		planet.set_applied_force(force)
		i += 1
		
		#print(sqrt($Earth.get_linear_velocity().x*$Earth.get_linear_velocity().x+$Earth.get_linear_velocity().y*$Earth.get_linear_velocity().y))
		#print(delta)
		#print(delta)
	pass
	
#var pos_x = $mars.position.x - $Earth.position.x
		#var pos_y = $mars.position.y - $Earth.position.y
