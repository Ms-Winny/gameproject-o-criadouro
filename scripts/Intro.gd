extends Control

func _ready():
	get_tree().change_scene_to_file("res://scenes/Locais/sala_de_estar.tscn")

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

func _on_dialogue_label_spoke(letter, letter_index, speed):
	if not letter in [" ", "."]:
		MusicController.play_music(MusicController.tecla)
