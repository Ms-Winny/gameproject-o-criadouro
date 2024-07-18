extends Node2D

var naPorta = false
@export var proximaCena = ""

func _ready():
	pass

func _on_portal_body_entered(body):
	if body.is_in_group("jogador"):
		naPorta = true

func _on_portal_body_exited(body):
	if body.is_in_group("jogador"):
		naPorta = false

func _physics_process(_delta):
	if naPorta && Input.is_action_just_pressed("interact"):
		MusicController.play_music(MusicController.porta)
		get_tree().change_scene_to_file(proximaCena)
