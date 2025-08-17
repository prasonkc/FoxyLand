extends ParallaxBackground

var scrollSpeed = 100;

func _process(delta: float) -> void:
	scroll_offset.x -= scrollSpeed * delta
