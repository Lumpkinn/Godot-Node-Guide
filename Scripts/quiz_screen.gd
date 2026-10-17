extends Control

@onready var AnswerContainer = $ItemList
@onready var QuestionNum =$QuestionNum

func _ready() -> void:
	QuestionNum.set_text(Globasl.title)


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
