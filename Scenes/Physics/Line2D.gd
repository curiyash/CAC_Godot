extends Line2D
 

# Declare member variables here. Examples:
# var a = 2
# var b = "text"
 
var target
var point
export(NodePath) var targetPath
 
func _ready():
	target = get_node(targetPath)
	pass

var i = -1
 
func _physics_process(delta):
	i+=1
	if i==10:
		position = Vector2(0,0)
		point = target.position
		add_point(point)
		update()
		i=0


