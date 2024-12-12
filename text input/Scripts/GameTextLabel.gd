extends Label

# Center position (locked position)
var center_position = Vector2(192, 112)

func _process(delta):
    # Get the mouse position
    var mouse_position = get_viewport().get_mouse_position()

    # Calculate the direction vector from the label position to the mouse position
    var direction = mouse_position - center_position

    # Calculate the angle between the label and the mouse using the direction vector
    var angle = direction.angle()

    # Set the rect_rotation of the label to face the mouse (in radians)
    rect_rotation = angle
