extends Control

func sayHi():
	print("Hello, World!")

func Area(length, width):
	var area= length * width
	return area

func Perim(length, width):
	return 2 * length + 2 * width


func _on_calc_pressed() -> void:
	sayHi()
	var l = int($L.text)
	var w = int($W.text)
	var a = Area(l, w)
	var p = Perim(l, w)
	$Out.text = "Area: %d\nPerimeter: %d" % [a, p]


func _on_clear_pressed() -> void:
	$Out.text = ""

func _on_quit_pressed() -> void:
	get_tree().quit()
