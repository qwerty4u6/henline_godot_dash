extends Camera2D

var player

var yFloor

var xDest
var yDest

func _ready():
	player = get_node("../Player")
	position.x = player.position.x + 328
	position.y = player.position.y + 48
	yFloor = get_node("../Floor").position.y

func _process(delta):
	xDest = player.position.x + 328
	position.x += (xDest - position.x) / 2
	yDest = player.position.y + 48
	if yDest + 200 > yFloor:
		yDest = yFloor - 200
	position.y += (yDest - position.y) / 5
