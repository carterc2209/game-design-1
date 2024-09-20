extends Control



func _on_calc_pressed() -> void:
	$ItemList.add_item("")
	for num in range(2, 11 + 1, 2):
		var squared = num**2
		var one = num + 1
		var mult = num * 2
		var line = "%d    %d    %d    %d" % [num, one, mult, squared]
		$ItemList.add_item(line)



func _on_clear_pressed() -> void:
	$ItemList.clear()


func _on_quit_pressed() -> void:
	get_tree().quit()
