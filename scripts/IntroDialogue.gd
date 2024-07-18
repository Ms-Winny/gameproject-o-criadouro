extends BaseDialogueTestScene

# Called when the node enters the scene tree for the first time.
func _ready():
	var ballon = load("res://dialogue/balloon.tscn").instantiate()
	get_tree().current_scene.add_child(ballon)
	ballon.start(resource, title)

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
