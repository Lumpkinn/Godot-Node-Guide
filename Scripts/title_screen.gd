extends Control
#this script is for the screen you see on startup

#tba: fade in effect, and timer for the proceed button.

#References to everything
var MainMenu = "res://Scenes/MainInfoHub.tscn"
@onready var IntroTextBox = $Panel/RandomDisclaimer/TextPanel/IntroText

#.Json stuff
var InfoPath = "res://Resources/Info/Information.json"
var InfoData = FileAccess.open(InfoPath, FileAccess.READ) 
var jsonData = JSON.parse_string(InfoData.get_as_text())

#getting the info from the .json
func getBodyInfo(emailType):
	var GuideInfo = jsonData[(emailType)]
	var textInfo = GuideInfo["Body"]
	return textInfo;

# Sets the text when the scene loads.
func _ready() -> void:
	IntroTextBox.set_text(getBodyInfo("introduction"))

#changes scene to the main menu
func _on_exit_button_pressed() -> void:
	get_tree().change_scene_to_file(MainMenu)
