extends Control
#This is a work in progress for now.

#this script is supposed to take the info from the last 9 entries in the .json, and return them in a quiz format

#references for future me!
@onready var AnswerContainer = $ItemList
@onready var QuestionNum = $Panel/QuestionNum

func _ready() -> void:
	QuestionNum.set_text(Globasl.title)

#find a signal that tells me which answer was chosen, and then tell the user if they were right or not.
