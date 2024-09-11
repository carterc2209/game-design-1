extends Control


func _on_calc_pressed() -> void:
	var A = float($A.text)
	var B = float($B.text)
	var C = float($C.text)
	var Plus = (-B + sqrt(B ** 2 - (4 * A * C))) / 2 * A
	var Min = (-B - sqrt(B ** 2 - (4 * A * C))) / 2 * A
	$Answer.text = "Answer: " + (str(Plus) + str(Min))

func _on_clear_pressed() -> void:
	($Answer.text) = ""

func _on_quit_pressed() -> void:
	get_tree().quit()
