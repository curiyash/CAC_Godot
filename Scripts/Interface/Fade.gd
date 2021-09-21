extends Node2D


func _on_AnimationPlayer_animation_finished(anim_name):
	get_tree().change_scene("res://SCENES/Home Ui.tscn")
	pass # Replace with function body.
