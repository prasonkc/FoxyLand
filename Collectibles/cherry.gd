extends Area2D


func _on_body_entered(body: Node2D) -> void:
	if (body.name == "Player"):
		Game.playerHP += 2
		queue_free()
