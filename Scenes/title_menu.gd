extends Control
#take input from the buttons.
@onready var InfoScene = "res://Scenes/title_menu.tscn"
#this variable is supposed to change depending on what button was pressed.
var id = 0
#this variable changes based off of what group of info its in.
var emailType = ""

var InfoPath = "res://Resources/Info/Information.json"
var InfoData = FileAccess.open(InfoPath, FileAccess.READ) 
var jsonData = JSON.parse_string(InfoData.get_as_text())


#take body info from .json, and return it as a string.
#these have to be passed to the info panel tho, so not sure if this should be their permanent home
func getBodyInfo(emailType, id):
	var GuideInfo = jsonData[(emailType + str(id))]
	var textInfo = GuideInfo["Body"]
	return textInfo;
#text for title 
func getTitleInfo(emailType, id):
	var GuideInfo = jsonData[(emailType+id)]
	var titleInfo = GuideInfo["Title"]
	return titleInfo
#getting info for tooltip
func getTooltipInfo():
	var GuideInfo = jsonData[(emailType+id)]
	var TooltipInfo = GuideInfo["Tooltip"]
	return TooltipInfo;

func load_mails() -> Dictionary:
	return jsonData

#we gonna stick with the stupid, unoptimized solution for now
#to whoevers reading this, I'm so sorry.

func _on_basic_button_1_pressed() -> void:
	id = 1
	emailType = "BasicsInfo"
	#this returns the text. i need to pass this to the RTF, and swap to the other scene. 
	getBodyInfo(emailType, id)

func _on_basic_button_2_pressed() -> void:
	id = 2
	emailType = "BasicsInfo"
	getBodyInfo(id, emailType)

func _on_basic_button_3_pressed() -> void:
	id = 3
	emailType = "BasicsInfo"
	getBodyInfo(id, emailType)

func _on_type_button_1_pressed() -> void:
	id = 1
	emailType = "TypeInfo"
	getBodyInfo(id, emailType)


func _on_type_button_2_pressed() -> void:
	id = 2
	emailType = "TypeInfo"
	getBodyInfo(id, emailType)


func _on_type_button_3_pressed() -> void:
	id = 3
	emailType = "TypeInfo"
	getBodyInfo(id, emailType)


func _on_type_button_4_pressed() -> void:
	id = 4
	emailType = "TypeInfo"
	getBodyInfo(id, emailType)


func _on_usage_1_pressed() -> void:
	id = 1
	emailType = "BasicUsageInfo"
	getBodyInfo(id, emailType)


func _on_usage_2_pressed() -> void:
	id = 2
	emailType = "BasicUsageInfo"
	getBodyInfo(id, emailType)


func _on_usage_3_pressed() -> void:
	id = 3
	emailType = "BasicUsageInfo"
	getBodyInfo(id, emailType)
