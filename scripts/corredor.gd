extends Node2D

func _ready():
	var jogador = get_node("Dr_")
	jogador.global_position = Global.player_inicial_position


func _on_sinalizador_de_porta_body_entered(body):
	if body.is_in_group("jogador"):
		Global.player_inicial_position = Global.sala_porta_direita
