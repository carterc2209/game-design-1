extends Control


func _on_calc_pressed() -> void:
	var copies = int($Enter.text)
	var price = 0 #Price per copy
	var ttl = 0 #Total price
	if copies > 0 and copies <= 99:
		price = 0.30
	elif copies > 99 and copies <= 499:
		price = 0.28
	elif copies > 499 and copies <= 749:
		price = 0.27
	elif copies > 749 and copies <= 1000:
		price = 0.26
	elif copies > 1000:
		price = 0.25
	else:
		$Output.text = "Invalid number of copies"
		return
	ttl = price * copies
	$Output.text = "Price per copy: " + str(price) + \
				"\nTotal cost: $%.2f" % ttl


func _on_clear_pressed() -> void:
	($Output.text) = "" + ""

func _on_exit_pressed() -> void:
	get_tree().quit()
