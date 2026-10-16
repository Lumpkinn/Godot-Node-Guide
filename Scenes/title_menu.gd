extends Control
@onready var InfoScene = "res://Scenes/title_menu.tscn"

#Accessing the data in the .JSON
var InfoPath = "res://Resources/Info/Information.json"
var InfoData = FileAccess.open(InfoPath, FileAccess.READ) 
var jsonData = JSON.parse_string(InfoData.get_as_text())


#take body info from .json, and return it as a string.
func getBodyInfo(InfoString):
	var GuideInfo = jsonData[InfoString.name]
	var textInfo = GuideInfo["Body"]
	return textInfo;

#text for title info from .json, and return it as a string.
func getTitleInfo(InfoString):
	var GuideInfo = jsonData[InfoString.name]
	var titleInfo = GuideInfo["Title"]
	return titleInfo

#getting info for tooltip from .json, and return it as a string.
func getTooltipInfo(InfoString):
	var GuideInfo = jsonData[InfoString.name]
	var TooltipInfo = GuideInfo["Tooltip"]
	return TooltipInfo;

#stores the values in a global variable, and passes them to the page
func openInfoScreen(InfoTitle, InfoBody, InfoTip):
	Globasl.title = InfoTitle
	Globasl.body = InfoBody
	Globasl.tooltip = InfoTip
	get_tree().change_scene_to_file("res://Scenes/node_info_panel.tscn")

#checks which button has been pressed
func _on_pressed(which: Button):
	openInfoScreen(getTitleInfo(which), getBodyInfo(which), getTooltipInfo(which))

#gets all of the buttons when the program starts.
func _ready() -> void:
	#testing bind() instead
	var button = get_tree().get_nodes_in_group("InfoButtons")
	for InfoButton:Button in button:
		var pressed = Callable(self, "_on_pressed").bind(InfoButton)
		InfoButton.pressed.connect(pressed)
