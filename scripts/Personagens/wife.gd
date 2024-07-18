extends CharacterBody2D

@onready var animacao = $AnimationPlayer
@export var jogador: Node

func _ready():
	animacao.play("idle_left") 

func _physics_process(_delta):
	if jogador.global_position.x > 720:
		animacao.play("idle_right")
	else:
		animacao.play("idle_left")
