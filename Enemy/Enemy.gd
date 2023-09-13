extends Node2D

@export var speed = 400
var health = 10
var attackDamage = 5

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	self.position.y += speed * delta


func damage(dmg):
	health -= dmg
	if health <= 0:
		Global.update_score(10)
		queue_free()


func _on_area_2d_body_entered(body):
	if body.has_method("damage") and body.is_in_group("Player"):
		body.damage(attackDamage)
