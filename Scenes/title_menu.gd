extends Control
#take input from the buttons.
@onready var BasicButtonArr = [$InfoPanel/BasicsLessonSelection/Basic_Info/Node1, $InfoPanel/BasicsLessonSelection/Basic_Info/Node2, $InfoPanel/BasicsLessonSelection/Basic_Info/Button]
@onready var InfoScene = "res://Scenes/title_menu.tscn"
#this variable is supposed to change depending on what button was pressed.
var id = 0
#this variable changes based off of what group of info its in.
var emailType = ""

#Handles JSON data
@onready var InfoPath = "res://Resources/Info/Information.json"
@onready var InfoData = FileAccess.open(InfoPath, FileAccess.READ) 
var jsonData = JSON.parse_string(InfoData.get_as_text())

#take body info from .json, and return it as a string.
#these have to be passed to the info panel tho, so not sure if this should be their permanent home
func getBodyInfo(emailType, id):
	var GuideInfo = jsonData[(emailType+id)]
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
var Button1 =$GeneralPanel/InfoPanel/BasicsLessonSelection/Basic_Info/Button2
var Button2 =$GeneralPanel/InfoPanel/BasicsLessonSelection/Basic_Info/Button3
var Button3 =$GeneralPanel/InfoPanel/BasicsLessonSelection/Basic_Info/Button
var Button4 =$"GeneralPanel/InfoPanel/BasicsLessonSelection/Node Types/Button2"
var Button5 =$"GeneralPanel/InfoPanel/BasicsLessonSelection/Node Types/Button3"
var Button6 =$"GeneralPanel/InfoPanel/BasicsLessonSelection/Node Types/Button"
var Button7 =$"GeneralPanel/InfoPanel/BasicsLessonSelection/Node Types/Miscallaneous Nodes"
