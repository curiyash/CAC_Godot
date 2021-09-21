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
 
func _process(delta):
	position = Vector2(0,0)
	point = target.position
	add_point(point)
	update()


