extends Node2D

var selected : bool = false

func _on_Die_input_event(_viewport : Node, event : InputEvent, _shape_idx : int) -> void:
	if event is InputEventMouseButton and event.pressed and event.button_index == BUTTON_LEFT:

		selected = !selected

		$SpriteUnselected.show()
		$SpriteSelected.hide()

		if selected:
			$SpriteUnselected.hide()
			$SpriteSelected.show()
