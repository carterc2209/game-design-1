extends Control

func _on_calc_pressed() -> void:
	$ItemList.add_item("Number    Square    Square Root    Cube    Fourth Root")
	for num in range(1, 21):
		var numsquared = num**2    # pow(num, 2)
		var numsqrt = sqrt(num)
		var cube = num**3
		var fourthroot = num**(1.0/4)
		var line = "%d    %d    %.4f    %d    %.4f" % [num, numsquared, numsqrt, cube, fourthroot]
		$ItemList.add_item(line)

func _on_clear_pressed() -> void:
	$ItemList.clear()

func _on_quit_pressed() -> void:
	get_tree().quit()
