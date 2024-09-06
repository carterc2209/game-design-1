extends Control




func _on_calc_pressed() -> void:
	var one = int($Opt1.text)
	var two = int($Opt2.text)
	var three = int($Opt3.text)
	var four = int($Opt4.text)
	var sum = one + two + three + four
	var avg = sum / 4
	$Sum.text = "Sum: " + str(sum)
	$Avg.text = "Average: " + str(avg)


func _on_rst_pressed() -> void:
	$Sum.text = ""
	$Avg.text = ""
	$Opt1.text = ""
	$Opt2.text = ""
	$Opt3.text = ""
	$Opt4.text = ""
	

func _on_quit_pressed() -> void:
	get_tree().quit()
