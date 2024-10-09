extends Area2D

@export var nextLvl = ""

func _on_body_entered(body: Node2D) -> void:
	if body.is_in_group("Player"):
		if nextLvl == "":
			OS.alert("No next level!")
			get_tree().reload_current_scene()
		else:
			var lvl = "res://" + nextLvl + ".tscn"
			get_tree().change_scene_to_file(lvl)
