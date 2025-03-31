extends Area2D

@onready var label: RichTextLabel = $Label

func _ready() -> void:
	pass

func _process(delta: float) -> void:
	if Input.is_action_pressed("esc"):
		queue_free()

# set the label
func set_label(txt):
	label.text = str(txt)


func _on_body_exited(body: Node2D) -> void:
	queue_free()
