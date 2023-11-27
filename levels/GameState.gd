extends Node2D

var lives = 3
var coins = 0
var lives_up_coins = 10

func _ready():
	add_to_group("Gamestate")
	update_HUD()

func hurt():
	lives -= 1
	$Player.hurt()
	update_HUD()
	#if lives = 0 end the game
	if lives == 0:
		end_game()
		
func update_HUD():
	get_tree().call_group("HUD", "update_HUD", lives, coins)
	
func coin_up():
	coins += 1
	update_HUD()
	get_tree().call_group("HUD", "update_coins", coins)
	var multiple_of_coins = (coins % lives_up_coins) == 0
	if multiple_of_coins:
		life_up()
		
func life_up():
	lives += 1
	update_HUD()

func end_game():
	get_tree().change_scene("res://levels/GameOver.tscn")
	
func win_game():
	get_tree().change_scene("res://levels/Victory.tscn")

