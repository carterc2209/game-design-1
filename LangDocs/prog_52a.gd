extends Control

func _on_calculate_pressed() -> void:
	var length = int($LengthTxt.text)
	var width = int($WidthTxt.text)
	var area = length * width
	var perimeter = 2 * length + 2 * width
	$Area.text = "Area: " + str(area)
	$Perimeter.text = "Perimeter: " + str(perimeter)
	# Operators: + - * / %   **pow
	# str - string (text)
	# int - integer (whole number)
	# float - floating-point number (w/ decimal)

func _on_clear_pressed() -> void:
	$LengthTxt.text = ""
	$WidthTxt.text = ""
	$Area.text = ""
	$Perimeter.text = ""

func _on_exit_pressed() -> void:
	get_tree().quit()
