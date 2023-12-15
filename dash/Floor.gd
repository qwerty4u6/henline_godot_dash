extends Area2D

var cam

func _ready():
	cam = get_node("../Camera2D")

func _physics_process(delta):
	position.x = cam.position.x
