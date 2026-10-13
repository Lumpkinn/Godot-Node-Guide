extends Control
#take input from the buttons.
@onready var BasicButtonArr = [$InfoPanel/BasicsLessonSelection/Basic_Info/Node1, $InfoPanel/BasicsLessonSelection/Basic_Info/Node2, $InfoPanel/BasicsLessonSelection/Basic_Info/Button]
@onready var InfoScene = "res://Scenes/title_menu.tscn"


func _on_node_1_pressed() -> void:
	get_tree().change_scene_to_file(InfoScene)
