extends Control



func _on_calc_pressed() -> void:
	$ItemList.add_item("Number    Square    Square Root")
	for num in range(1, 51):
		var numsquared = num**2    # pow(num, 2)
		var numsqrt = sqrt(num)
		var line = "%d    %d    %.4f" % [num, numsquared, numsqrt]
		$ItemList.add_item(line)

func _on_clear_pressed() -> void:
	$ItemList.clear()


func _on_quit_pressed() -> void:
	get_tree().quit()
