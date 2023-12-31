extends Node2D

var speed = 1000
var damage = 10
# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	position.y -= speed * delta


func _on_area_2d_body_entered(body):
	if body.has_method("damage") and not body.is_in_group("Player"):
		body.damage(damage)
		queue_free()
