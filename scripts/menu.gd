extends Control

func _on_jogar_pressed():
	get_tree().change_scene_to_file("res://scenes/intro.tscn")

func _on_controles_pressed():
	get_tree().change_scene_to_file("res://scenes/controles.tscn")

func _on_sair_pressed():
	get_tree().quit()
