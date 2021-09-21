extends TextureButton


func _ready():
	$"AudioStreamPlayer2D".play()
	



func _on_music_pressed():
	$"AudioStreamPlayer2D".stream_paused = !$"AudioStreamPlayer2D".stream_paused
	pass # Replace with function body.
