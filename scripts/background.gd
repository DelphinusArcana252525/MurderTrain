extends ParallaxBackground

var speed : float = 1500

func _process(delta):
	scroll_base_offset.x -= speed * delta
