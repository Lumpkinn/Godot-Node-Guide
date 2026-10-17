extends Control

#References to everything that the script needs, like the button to return back to the main screen, and the references to the text elements.
@onready var SelectScreen = "res://Scenes/MainInfoHub.tscn"
@onready var TitleField = $BasePanel/Label
@onready var BodyField = $BasePanel/InfoPanel/RichTextLabel


# Sets the text when the scene is made
func _ready() -> void:
	TitleField.set_text(Globasl.title)
	BodyField.set_text(Globasl.body)

#returns to the main screen
func _on_return_button_pressed() -> void:
	get_tree().change_scene_to_file(SelectScreen)
