extends Node2D

@onready var Laser = load("res://laser.tscn")
# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	position.x = get_global_mouse_position().x
	
	if Input.is_action_just_pressed("shoot"):
		var new_laser = Laser.instantiate()
		add_sibling(new_laser)
		new_laser.position = self.position - Vector2(0,70)
