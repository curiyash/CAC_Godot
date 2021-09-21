extends Sprite

export (float) var scale_speed = 1
var scale_down = true

func _process(delta):
	if (scale_down == true):
		scale.x -= delta * scale_speed
	if (scale.x <= -1):
		scale_down = false
		scale.x = -1
	else:
		scale.x += delta * scale_speed
	if (scale.x >= 1):
		scale_down = true
		scale.x = 1
# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
