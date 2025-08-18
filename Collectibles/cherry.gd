extends Area2D


func _on_body_entered(body: Node2D) -> void:
	if (body.name == "Player"):
		Game.playerHP += 2
		
		var tween = get_tree().create_tween()
		
		tween.parallel().tween_property(self, "position", position - Vector2(0, 35), 0.35)
		tween.parallel().tween_property(self, "modulate:a", 0.0, 0.25)
		
		tween.tween_callback(queue_free)
