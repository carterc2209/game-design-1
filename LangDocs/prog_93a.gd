extends Control

func _on_quit_pressed() -> void:
	get_tree().quit()

func _on_calc_pressed() -> void:
	var w = ($Watts.text)
	var d = float(0.0475)
	var rate = float(d) * float(w)
	var sur = float(rate * .1)
	var cty = float(rate * .03)
	var ttl = rate + sur + cty
	var late = (ttl * 1.04)
	($Total.text) = "Total: %.2f" % ttl
	($City.text) = "City Tax: %.2f" % cty
	($Surcharge.text) = "Surcharge: %.2f" % sur
	($Late.text) = "If paid late: %.2f" % late

func _on_clear_pressed() -> void:
	($City.text) = "City Tax:"
	($Surcharge.text) = "Surcharge:"
	($Total.text) = "Total:"
	($Late.text) = "If payed late:"
