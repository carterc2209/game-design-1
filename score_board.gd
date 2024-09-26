extends Control

var score = 0 #Global variable


func addpnt(): score += 1
func subpnt(): score -= 1
func rst(): score = 0

func update():
	$Score.text = "Score: %d" % score


func _on_update_pressed() -> void:
	var choice = $LineEdit.text.to_lower()
	if choice == "add":
		addpnt()
	elif choice == "sub" or choice == "subtract":
		subpnt()
	else:
		OS.alert("Invalid Choice") # O and S need to be capitalized
	update()

func _on_reset_pressed() -> void:
	rst()
	update()
