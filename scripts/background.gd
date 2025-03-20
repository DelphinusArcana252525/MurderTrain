extends ParallaxBackground

var speed : float = 1000

func _process(delta):
	scroll_base_offset.x -= speed * delta
