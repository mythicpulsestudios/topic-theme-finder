extends Label

# Center position
var center_position = Vector2(192, 112)
# Radius of the circle
var radius = 50
# Speed of the rotation (in radians per second)
var speed = 2 * PI / 3  # Rotate full circle in 3 seconds
# Timer to update the position
var angle = 0.0

func _process(delta):
    # Increment angle based on speed and delta time
    angle += speed * delta
    
    # Update position using circular motion formula
    var x = center_position.x + radius * cos(angle)
    var y = center_position.y + radius * sin(angle)
    
    # Set the label position to the new calculated position
    rect_position = Vector2(x, y)
