extends Control

func _on_quit_pressed() -> void:
	get_tree().quit()

func _on_calc_pressed() -> void:
	var rate = float($Watts.text)
	var sur = float(rate * .1)
	var cty = float(rate * .03)
	var ttl = rate + sur + cty
	($City.text) = "City Tax:" + cty
	($Surcharge.text) = "Surcharge:" + sur
	($Total.text) = "Total:" + ttl

func _on_clear_pressed() -> void:
	($City.text) = "City Tax:"
	($Surcharge.text) = "Surcharge:"
	($Total.text) = "Total:"
