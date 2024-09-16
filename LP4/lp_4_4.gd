extends Control

func _on_calc_pressed() -> void:
	var Num = int($CarNum.text)
	if Num == 119:
		$Answer.text = "Your car is defective"
	elif Num == 179:
		$Answer.text = "Your car is defective"
	elif Num == 221:
		$Answer.text = "Your car is defective"
	elif Num == 780:
		$Answer.text = "Your car is defective"
	elif Num >= 189 and Num <= 195:
		$Answer.text = "Your car is defective"
	else:
		$Answer.text = "Your car is not defective"

func _on_clear_pressed() -> void:
	$Answer.text = ""

func _on_quit_pressed() -> void:
	get_tree().quit()
