extends Area2D
const OPEN_LETTER = preload("res://open_letter.tscn")

func _ready() -> void:
	pass # Replace with function body.

func _process(delta: float) -> void:
	pass

func open_letter():
	var new_letter = OPEN_LETTER.instantiate()
	get_parent().add_child(new_letter)
	new_letter.position = position
	new_letter.set_label("whatever you need here")
	
# IF PLAYER ENTERS THE AREA, OPEN UP THE OPENLETTER SCENE AND SET ITS LABEL
# TO WHATEVER TEXT YOU NEED.
func _on_body_entered(body: Node2D) -> void:
	open_letter()
