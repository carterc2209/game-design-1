extends Control


func _on_exit_pressed() -> void:
	get_tree().quit()

func _on_calc_pressed() -> void:
	var limit = float($Limit.text)
	var speed = float($Speed.text)
	var over = speed - limit
	var fine = 20 + (5 * over)
	$Fine.text = "$ %.2f" % fine

func _on_clear_pressed() -> void:
	$Fine.text = ""
