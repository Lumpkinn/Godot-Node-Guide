extends Control
@onready var SelectScreen = "res://Scenes/MainInfoHub.tscn"
@onready var TitleField = $BasePanel/Label  # 
@onready var BodyField = $BasePanel/InfoPanel/RichTextLabel #
#var ToolTipField =# 

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	TitleField.set_text(Globasl.title)
	BodyField.set_text(Globasl.body)
#	BodyField.set_tooltip(Globasl.tooltip)


func _on_return_button_pressed() -> void:
	get_tree().change_scene_to_file(SelectScreen)
