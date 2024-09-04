extends Control



func _on_button_pressed() -> void:
	$Label.text= "I am from Janesville and I went to D.C. last year."


func _on_button_2_pressed() -> void:
	$Label.text= ""


func _on_button_3_pressed() -> void:
	get_tree().quit()
