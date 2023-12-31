extends CanvasLayer

@onready var SFX_BUS_ID = AudioServer.get_bus_index("SFX")
@onready var MUSIC_BUS_ID = AudioServer.get_bus_index("Music")


func _ready():
	pass

func _process(delta):
	pass

func _input(event):
	pass

func _on_music_slider_value_changed(value):
	AudioServer.set_bus_volume_db(MUSIC_BUS_ID,linear_to_db(value))
	AudioServer.set_bus_mute(MUSIC_BUS_ID,value< .05)

func _on_sfx_slider_value_changed(value):
	AudioServer.set_bus_volume_db(SFX_BUS_ID,linear_to_db(value))
	AudioServer.set_bus_mute(SFX_BUS_ID,value< .05)
