extends Area2D

var floor

var velocity = Vector2(12, 0)
var jump_frames = 0

func _ready():
	floor = get_node("../Floor")

func _physics_process(delta):
	velocity.y += 1
	
	if Input.is_action_pressed("jump") and jump_frames > 0:
		velocity.y = -19
	
	position += velocity
	jump_frames -= 1
	
	var floorY = floor.position.y - floor.get_node("CollisionShape2D").shape.extents.y - $CollisionShape2D.shape.extents.y
	if position.y > floorY:
		position.y = floorY
		velocity.y = 0
		jump_frames = 1

#func _on_area_entered(area):
#	if area == floor:
#		position.y = area.position.y - area.get_node("CollisionShape2D").shape.extents.y - $CollisionShape2D.shape.extents.y
#		velocity.y = 0
#		jump_frames = 1
