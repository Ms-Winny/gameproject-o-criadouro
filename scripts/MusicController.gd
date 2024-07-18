extends Node2D

@onready var porta = $porta
@onready var tecla = $tecla

func play_music(musica):
	musica.play()
