extends Node2D

func _ready():
	$"AudioStreamPlayer2D".play()
func _on_Our_pressed():
	get_tree().change_scene("res://SCENES/our solar system.tscn")
	
func _on_TextureButton2_pressed():
	get_tree().quit()



func _on_m_pressed():
	$"AudioStreamPlayer2D".stream_paused = !$"AudioStreamPlayer2D".stream_paused
