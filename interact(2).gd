extends Control




func _on_button_pressed() -> void:
	if Input.is_mouse_button_pressed(MOUSE_BUTTON_LEFT):
		self.queue_free() # Delete self from the world
