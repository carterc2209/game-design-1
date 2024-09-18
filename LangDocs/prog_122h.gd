extends Control

func _on_calc_pressed() -> void:
	$ItemList.add_item("Number    Square    Square Root    Cube Root    Fourth Root")
	for num in range(1, 21):
		var numsquared = num**2    # pow(num, 2)
		var numsqrt = sqrt(num)
		var cubed = ""
		var fourthroot = ""
		var line = "%d    %d    %.4f    %d    %.4f" % [num, numsquared, numsqrt, cubed, fourthroot]
		$ItemList.add_item(line)

func _on_clear_pressed() -> void:
	$ItemList.clear()

func _on_quit_pressed() -> void:
	get_tree().quit()
