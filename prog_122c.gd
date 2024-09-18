extends Control



func _on_calc_pressed() -> void:
	""


func _on_clear_pressed() -> void:
	$ItemList.clear


func _on_quit_pressed() -> void:
	get_tree().quit()
