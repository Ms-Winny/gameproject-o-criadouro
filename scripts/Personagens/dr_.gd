extends CharacterBody2D

@onready var sprite: Sprite2D = get_node("Sprite")
@onready var animator: AnimationPlayer = get_node("AnimationPlayer")

var rapidez = 200.0
var input: Vector2

func _physics_process(delta) -> void:
	var player_input = get_input() 
	velocity = player_input * rapidez 
	move_and_slide()
	verificar_direcao()
	animate()
	
func verificar_direcao() -> void:
	if velocity.x > 0:
		sprite.flip_h = true
	if velocity.x < 0:
		sprite.flip_h = false

func get_input():
	input.x = Input.get_action_strength("d") - Input.get_action_strength("a")
	input.y = Input.get_action_strength("s") - Input.get_action_strength("w")
	return input.normalized()

func animate():
	if velocity.x != 0 || velocity.y != 0:
		animator.play("walk") 
	
	else:
		animator.play("idle")
