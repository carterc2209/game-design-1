extends RigidBody2D

func _ready() -> void:
	$Spike/CollisionPolygon2D/Polygon2D.polygon = $Spike/CollisionPolygon2D.polygon
	
	pass 

func _on_body_entered(body: Node) -> void:
	if body.name == "plt_player":
		body.queue_free()
		OS.alert("You Died!")
		get_tree().reload_current_scene()
