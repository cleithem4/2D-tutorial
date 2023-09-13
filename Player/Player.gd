extends Node2D

@onready var Laser = load("res://laser.tscn")
var health = 1
# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	Global.health = health
	position.x = get_global_mouse_position().x
	
	if Input.is_action_just_pressed("shoot"):
		var new_laser = Laser.instantiate()
		add_sibling(new_laser)
		new_laser.position = self.position - Vector2(0,70)
func damage(dmg):
	health -= dmg
	if health <= 0:
		get_tree().change_scene_to_file("res://UI/game_over.tscn")
