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
func getBodyInfo(id, emailType):
	var GuideInfo = jsonData[(emailType + str(id))]
	var textInfo = GuideInfo["Body"]
	return textInfo;
#text for title 
func getTitleInfo(id, emailType):
	var GuideInfo = jsonData[(emailType+str(id))]
	var titleInfo = GuideInfo["Title"]
	return titleInfo
#getting info for tooltip
func getTooltipInfo(id, emailType):
	var GuideInfo = jsonData[(emailType+str(id))]
	var TooltipInfo = GuideInfo["Tooltip"]
	return TooltipInfo;


func openInfoScreen(InfoTitle, InfoBody, InfoTip):
	Globasl.title = InfoTitle
	Globasl.body = InfoBody
	Globasl.tooltip = InfoTip
	get_tree().change_scene_to_file("res://Scenes/node_info_panel.tscn")


#we gonna stick with the stupid, unoptimized solution for now
#to whoevers reading this, I'm so sorry.


#Works. make sure to get the specific photos you want after.
func _on_basic_button_1_pressed() -> void:
	id = 1
	emailType = "BasicsInfo"
	openInfoScreen(getTitleInfo(id, emailType), getBodyInfo(id,emailType), getTooltipInfo(id,emailType))
	#get photos, and repeat for each function

func _on_basic_button_2_pressed() -> void:
	id = 2
	emailType = "BasicsInfo"
	openInfoScreen(getTitleInfo(id, emailType), getBodyInfo(id,emailType), getTooltipInfo(id,emailType))

func _on_basic_button_3_pressed() -> void:
	id = 3
	emailType = "BasicsInfo"
	openInfoScreen(getTitleInfo(id, emailType), getBodyInfo(id,emailType), getTooltipInfo(id,emailType))

func _on_type_button_1_pressed() -> void:
	id = 1
	emailType = "TypeInfo"
	openInfoScreen(getTitleInfo(id, emailType), getBodyInfo(id,emailType), getTooltipInfo(id,emailType))

func _on_type_button_2_pressed() -> void:
	id = 2
	emailType = "TypeInfo"
	openInfoScreen(getTitleInfo(id, emailType), getBodyInfo(id,emailType), getTooltipInfo(id,emailType))

func _on_type_button_3_pressed() -> void:
	id = 3
	emailType = "TypeInfo"
	openInfoScreen(getTitleInfo(id, emailType), getBodyInfo(id,emailType), getTooltipInfo(id,emailType))

func _on_type_button_4_pressed() -> void:
	id = 4
	emailType = "TypeInfo"
	openInfoScreen(getTitleInfo(id, emailType), getBodyInfo(id,emailType), getTooltipInfo(id,emailType))

func _on_usage_1_pressed() -> void:
	id = 1
	emailType = "BasicUsageInfo"
	openInfoScreen(getTitleInfo(id, emailType), getBodyInfo(id,emailType), getTooltipInfo(id,emailType))

func _on_usage_2_pressed() -> void:
	id = 2
	emailType = "BasicUsageInfo"
	openInfoScreen(getTitleInfo(id, emailType), getBodyInfo(id,emailType), getTooltipInfo(id,emailType))

func _on_usage_3_pressed() -> void:
	id = 3
	emailType = "BasicUsageInfo"
	openInfoScreen(getTitleInfo(id, emailType), getBodyInfo(id,emailType), getTooltipInfo(id,emailType))
