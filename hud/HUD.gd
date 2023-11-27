extends CanvasLayer

func _ready():
	$Control/TextureRect/HBoxContainer/lifecount.text = "3"
	
func update_HUD(lives_left, coins):
	$Control/TextureRect/HBoxContainer/lifecount.text = str(lives_left)
	$Control/TextureRect/HBoxContainer/coincount.text = str(coins)
