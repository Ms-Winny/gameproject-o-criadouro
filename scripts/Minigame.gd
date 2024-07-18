extends Control

@onready var progresso_dna: TextureProgressBar = $Tela/Barra_de_Dna/TextureProgressBar

func ChecarVitoria():
	if progresso_dna.value == progresso_dna.max_value:
		get_tree().change_scene_to_file("res://scenes/Computer/Minigame/minigame_win.tscn")
	return
