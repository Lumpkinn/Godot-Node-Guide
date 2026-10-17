extends Control
var MainMenu = "res://Scenes/MainInfoHub.tscn"
var InfoPath = "res://Resources/Info/Information.json"
var InfoData = FileAccess.open(InfoPath, FileAccess.READ) 
var jsonData = JSON.parse_string(InfoData.get_as_text())
@onready var IntroTextBox = $Panel/RandomDisclaimer/TextPanel/IntroText

func getBodyInfo(emailType):
	var GuideInfo = jsonData[(emailType)]
	var textInfo = GuideInfo["Body"]
	return textInfo;

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	IntroTextBox.set_text(getBodyInfo("introduction"))

func _on_exit_button_pressed() -> void:
	get_tree().change_scene_to_file(MainMenu)
