extends Node

var cherry = preload("res://Collectibles/cherry.tscn")
var gem = preload("res://Collectibles/gem.tscn")

func _on_timer_timeout() -> void:
	var cherryTemp = cherry.instantiate()
	var rng = RandomNumberGenerator.new()
	var rand_int = rng.randi_range(100, 2250)
	cherryTemp.position = Vector2(rand_int, 425)
	add_child(cherryTemp)


func _on_timer_gem_timeout() -> void:
	var gemTemp = gem.instantiate()
	var rng = RandomNumberGenerator.new()
	var rand_int1 = rng.randi_range(100, 2250)
	gemTemp.position = Vector2(rand_int1, 425)
	add_child(gemTemp)
