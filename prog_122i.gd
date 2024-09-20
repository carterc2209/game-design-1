extends Control



func _on_calc_pressed() -> void:
	$ItemList.add_item("Number    Cube Root    Cube")
	for num in range(-25, 25):
		var cubert = 0
		var posnum = abs(num)
		if num <= 0:
			cubert = -(posnum**(1.0/3))
		else:
			cubert = num**(1.0/3)
		var cube = num**3
		var line = "%d    %.5f    %d" % [num, cubert, cube]
		$ItemList.add_item(line)


func _on_clear_pressed() -> void:
	$ItemList.clear()


func _on_quit_pressed() -> void:
	get_tree().quit()
