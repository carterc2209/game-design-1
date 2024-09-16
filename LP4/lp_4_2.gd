extends Control


func _on_calc_pressed() -> void:
	var leng = int($Length.text)
	var wid = int($Width.text)
	var hght = int($Height.text)
	var wght = int($Weight.text)
	var vol = leng * wid * hght
	if vol < 100000:
		$Answer.text = ""
	if wght < 27:
		$Answer.text = ""
	if vol > 100000:
		$Answer.text = "Too big"
	if wght > 27:
		$Answer.text = "Too heavy"


func _on_clear_pressed() -> void:
	$Answer.text = ""


func _on_quit_pressed() -> void:
	get_tree().quit()
