extends Control



func _on_show_btn_pressed() -> void:
	$Label.text ="I don't have a favorite club."


func _on_clear_btn_pressed() -> void:
	$Label.text = ""


func _on_exit_btn_pressed() -> void:
	get_tree().quit()
