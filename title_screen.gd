extends Control

var InfoPath = "res://Resources/Info/Information.json"
var InfoData = FileAccess.open(InfoPath, FileAccess.READ) 
var jsonData = JSON.parse_string(InfoData.get_as_text())

func getBodyInfo(emailType):
	var GuideInfo = jsonData[(emailType)]
	var textInfo = GuideInfo["Body"]
	return textInfo;

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	$Container/IntroText.set_text(getBodyInfo("introduction"))

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
