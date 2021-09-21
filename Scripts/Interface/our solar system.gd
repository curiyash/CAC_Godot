extends Node2D


#play()
	
func _on_music_pressed():
	$"AudioStreamPlayer2D".stream_paused = !$"AudioStreamPlayer2D".stream_paused

	

func _on_home_pressed():
	get_tree().change_scene("res://SCENES/Home Ui.tscn")
	
	


