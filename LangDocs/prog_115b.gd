extends Control



func _on_calc_pressed() -> void:
	for num in range(2, 37):
		var number = 2
		var line = number + 2
		$Label.text = str(line)

func _on_clear_pressed() -> void:
	$Label.text = ""


func _on_quit_pressed() -> void:
	get_tree().quit()
