extends Control

func add(num1, num2):
	var add = num1 + num2
	return add

func sub(num1, num2):
	return num1 - num2

func mult(num1, num2):
	return num1 * num2

func dvd(num1, num2):
	return num1 / num2

func pow(num1, num2):
	return num1 ** num2

func mod(num1, num2):
	return num1 % num2

func _on_add_pressed() -> void:
	var n1 = int($numOne.text)
	var n2 = int($numTwo.text)
	var result = add(n1, n2)
	$Out.text = str(result)

func _on_sub_pressed() -> void:
	var n1 = int($numOne.text)
	var n2 = int($numTwo.text)
	var result = sub(n1, n2)
	$Out.text = str(result)

func _on_mult_pressed() -> void:
	var n1 = int($numOne.text)
	var n2 = int($numTwo.text)
	var result = mult(n1, n2)
	$Out.text = str(result)

func _on_clear_pressed() -> void:
	$Out.text = ""

func _on_quit_pressed() -> void:
	get_tree().quit()


func _on_dvd_pressed() -> void:
	var n1 = int($numOne.text)
	var n2 = int($numTwo.text)
	var result = dvd(n1, n2)
	$Out.text = str(result)

func _on_pow_pressed() -> void:
	var n1 = int($numOne.text)
	var n2 = int($numTwo.text)
	var result = pow(n1, n2)
	$Out.text = str(result)

func _on_mod_pressed() -> void:
	var n1 = int($numOne.text)
	var n2 = int($numTwo.text)
	var result = mod(n1, n2)
	$Out.text = str(result)
