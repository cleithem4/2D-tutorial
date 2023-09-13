extends Node2D

@onready var Enemy = load("res://Enemy/enemy.tscn")
var rng
# Called when the node enters the scene tree for the first time.
func _ready():
	rng = RandomNumberGenerator.new()
	




func spawn_enemy_ship():
	var new_enemy = Enemy.instantiate()
	add_sibling(new_enemy)
	new_enemy.position.y = 0
	new_enemy.position.x = rng.randf() * 900 + 50
	new_enemy.speed = rng.randf() * 800 + (Global.score * 2)


func _on_spawn_rate_timeout():
	spawn_enemy_ship()
