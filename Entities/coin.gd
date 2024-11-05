extends BaseItem

func _init(): super._init(1)  # 1/4 of a heart

func interact(player):
	player.pikcup_health(value)
	remove()
