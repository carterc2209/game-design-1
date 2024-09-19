extends Control



func _on_calc_pressed() -> void:
	$ItemList.add_item("Hours    Pay")
	for num in range(0, 41):
		var hours = num
		var pay = 4 * num
		var line = "%d    %d" % [hours, pay]
		$ItemList.add_item(line)


func _on_clear_pressed() -> void:
	$ItemList.clear()


func _on_quit_pressed() -> void:
	get_tree().quit()
