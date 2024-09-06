extends Control

func _on_calc_pressed() -> void:
	var rad = float($Radius.text)
	var pi = 3.14159
	var area = pi * rad**2 
	var cir = 2 * pi * rad
	$Area.text = "Area: " + str(area)
	$Circumference.text = "Circumference: " + str(cir)

func _on_clear_pressed() -> void:
	$Area.text = "Area: "
	$Circumference.text = "Circumference: "
	$Radius.text = ""

func _on_quit_pressed() -> void:
	get_tree().quit()
