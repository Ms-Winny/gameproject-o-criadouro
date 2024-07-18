extends CharacterBody2D

const speed = 100
var direction = Vector2.ZERO
var movement = false

func _ready():
	direction.y = [1,-1].pick_random()
	direction.x = [1,-1].pick_random()

func _physics_process(_delta):
	if Input.is_action_just_pressed("start"):
		movement = true
	move()
	
func move():
	if movement == true:
		if direction:
			velocity = direction * speed
		else:
			velocity = velocity.move_toward(Vector2.ZERO, speed)
	
		move_and_slide()
	else:
		return

func _on_button_pressed():
	get_parent().get_parent().get_node("Barra_de_Tempo").get_node("TextureProgressBar").value -= 10
	queue_free()
