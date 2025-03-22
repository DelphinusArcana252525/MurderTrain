extends CenterContainer

@onready var timer: Timer = $Timer

var should_fade : bool = false

func _ready() -> void:
	modulate.a = .75
	timer.start(4)

func _process(_delta: float) -> void:
	if should_fade:
		modulate.a -= 0.01
	if modulate.a <= 0:
		# To prevent a bunch of _process() funcs running in th background
		# oddly this had bugs so I am removing it
		# queue_free()
		should_fade = false

func _on_timer_timeout() -> void:
	should_fade = true
