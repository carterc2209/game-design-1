extends BaseItem

func _init(): super._init(20)  


func interact(player):
	player.pickup_container(value)
	remove()
