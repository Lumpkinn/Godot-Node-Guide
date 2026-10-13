extends Control
#take input from the buttons.
@onready var BasicButtonArr = [$InfoPanel/BasicsLessonSelection/Basic_Info/Node1, $InfoPanel/BasicsLessonSelection/Basic_Info/Node2, $InfoPanel/BasicsLessonSelection/Basic_Info/Button]
@onready var InfoScene = "res://Scenes/title_menu.tscn"
@onready var InfoString = ""
var buttons = []
func _process(float) -> void:
	for button in BasicButtonArr:
		pass
		#button.pressed.connect(on_press.bind(button.some_unique_identifier))

func on_press(id) -> void:
	InfoString = id;
	get_tree().change_scene_to_file(InfoScene)
