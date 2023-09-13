extends Control


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	$Score.text = "Top Score: " + str(Global.score)
	


func _on_restart_pressed():
	Global.reset_values()
	get_tree().change_scene_to_file("res://node_2d.tscn")


func _on_quit_pressed():
	get_tree().quit()
