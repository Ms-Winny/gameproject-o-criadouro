extends Control

func _on_superior_body_entered(body):
	body.direction.y *= -1

func _on_inferior_body_entered(body):
	body.direction.y *= -1

func _on_esquerda_body_entered(body):
	body.direction.x *= -1

func _on_direita_body_entered(body):
	body.direction.x *= -1
