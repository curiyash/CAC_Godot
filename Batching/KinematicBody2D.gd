extends KinematicBody2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"
onready var trail = get_node("Line2D")
onready var player = get_node(".")

# Called when the node enters the scene tree for the first time.
func _ready():
	
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	move_and_slide(Vector2(0,-1000))
	trail.global_position = Vector2(0,0)
	trail.global_rotation = 0
	trail.add_point(player.position)
	
	while trail.get_point_count() > 10:
		trail.remove_point(0)
	pass
