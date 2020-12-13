extends Position2D

var projectile = preload("res://src/Entities/Projectile.tscn")

func shoot(direction, strength):
	var snowball = projectile.instance()
	snowball.global_position = global_position
	snowball.launch(direction.normalized() * strength)
	get_node("/root/Game/Projectiles").add_child(snowball)