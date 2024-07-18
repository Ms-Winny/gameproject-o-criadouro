extends TextureProgressBar

@onready var barra_de_progresso: TextureProgressBar = self
@onready var temporizador: Timer = $Timer

func _ready():
	barra_de_progresso.value = 30
	
func _physics_process(delta):
	if Input.is_action_just_pressed("start"):
		temporizador.start()

func _on_timer_timeout():
	if barra_de_progresso.value == 0:
		temporizador.stop()
		get_tree().change_scene_to_file("res://scenes/Computer/Minigame/minigame_fail.tscn")
	barra_de_progresso.value -= 1
