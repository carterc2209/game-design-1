extends Control



func _on_calc_pressed() -> void:
	var mysum = 0
	var lcv = 3 # loop control variable 
	while lcv <= 9669: # runs code while true
		mysum += lcv
		$ItemList.add_item(str(mysum))
		lcv += 3


func _on_clear_pressed() -> void:
	$ItemList.clear()


func _on_quit_pressed() -> void:
	get_tree().quit()
