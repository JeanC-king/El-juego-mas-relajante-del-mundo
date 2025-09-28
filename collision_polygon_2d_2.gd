extends Area2D

@export var next_level_path: String = "res://nivel_2.tscn"

func _ready():
	connect("body_entered", Callable(self, "_on_body_entered"))
	

func _on_body_entered(body: Node) -> void:
	print(body.name)
	if body.name == "CharacterBody2D":
		get_tree().change_scene_to_file(next_level_path)
		
		
