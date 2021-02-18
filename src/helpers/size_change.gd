extends Sprite

export (OpenSimplexNoise) var noise
export var speed := 20.0
var pos := 0.0
onready var orig_scale = scale

func _ready():
	pos = rand_range(0,1000)
	

func _process(delta):
	pos += delta*speed
	scale = orig_scale * (1 + noise.get_noise_1d(pos)*0.2)
