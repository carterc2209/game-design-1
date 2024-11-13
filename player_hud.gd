extends CanvasLayer

@onready var player = get_tree().get_first_node_in_group("Player")
@onready var hearts = $PlayerHealth/Hearts

const HEART_ROW_SIZE = 10
const HEART_OFFSET = 16

func create_heart():
	var n_heart = Sprite2D.new()
	n_heart.texture = hearts.texture
	n_heart.hframes = hearts.hframes
	n_heart.vframes = hearts.vframes
	n_heart.frame = 8
	hearts.add_child(n_heart)
	

@onready var p_HUD = get_tree().get_first_node_in_group("HUD")

func _ready() -> void:
	draw_hearts()


func draw_hearts():
	for heart in hearts.get_children():
		hearts.remove_child(hearts)
	for i in range(int(player.data.max_health) / 20):
		create_heart() # 1 heart per 20 hp

func add_money():
	#$Control/Lbl_Money.text = data.money
	pass



func _process(delta: float) -> void:
	$Money/Coins.text = "%03d" % player.data.money
	var p_health = player.data.health
	var full_hearts = floor(p_health / 20)
	var remainder = int(p_health) % 20
	
	for heart in hearts.get_children():
		var index = heart.get_index()
		var x = (index % HEART_ROW_SIZE) * HEART_OFFSET 
		var y = (index / HEART_ROW_SIZE) * HEART_OFFSET
		heart.position = Vector2(x, y)
		
		# frame 8 empty. frame 7 1/4. frame 6 1/2. frame 5 3/4. frame 4 full
		if index > full_hearts:
			hearts.frame = 8
		elif index == full_hearts:
			heart.frame = 8 - int(remainder / 5)
		elif index < full_hearts:
			heart.frame = 4
	pass
