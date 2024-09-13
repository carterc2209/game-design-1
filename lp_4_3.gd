extends Control


func _on_calc_pressed() -> void:
	var eggs = int($LineEdit.text)
	var dozens = floor(eggs / 12)
	var remaining = eggs % 12
	var price = 0
	var ttl = 0
	if dozens > 0 and dozens <= 4:
		price = 0.50
	elif dozens > 4 and dozens <= 6:
		price = 0.45
	elif dozens > 6 and dozens <= 11:
		price = 0.40
	elif dozens > 11:
		price = 0.35
	else:
		$Output.text = "Invalid number of copies"
		return
	ttl = dozens * price + remaining * (price * 1/12) 
	$Label2.text = "Price per copy: " + str(price) + \
				"\nTotal cost: $%.2f" % ttl

func _on_clear_pressed() -> void:
	$Label2.text = "Total price:"

func _on_quit_pressed() -> void:
	get_tree().quit()
