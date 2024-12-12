extends Control


var words = [
	"10,000", "alchemy", "anti-hero", "around the world", "asteroid", "battlefield", 
	"beat the heat", "beat the odds", "big vs small", "big wheel", "board game", 
	"bone wizard", "boss fight", "bouncing", "break it", "broken", "bubble", "bugs", 
	"buttons", "calibration", "can you", "candy", "cats", "cats in space", "cellular", 
	"chaos", "chat", "chill", "circles", "claustrophobic", "click", "collect", "color", 
	"confined", "connections", "countdown", "crosshairs", "dancing", "dangerous wilds", 
	"darkness", "deadline", "destruction", "digging", "distraction", "divided", "dragons", 
	"drop", "ducks", "dungeon crawl", "dungeons", "eating", "egg", "environment", 
	"exploration", "explosions", "fall damage", "filter", "finality", "fire", "fire drill", 
	"flight", "floating", "folklore", "forest", "free", "free your mind", "fruiting", 
	"fur", "game show", "ghosted", "gnome", "going in reverse", "gravity", "greed", 
	"grind", "groups", "happiness", "harmony", "high score", "horror", "how long can you last", 
	"hunger", "hurricane", "infinity", "instructive", "ketchup", "lemons", "level up", 
	"limited resources", "limited space", "living objects", "lone wolf", "loneliness", 
	"losing money", "magic", "making payments", "mayhem", "maze", "mirror", "mouse", 
	"moving world", "music therapy", "musical chairs", "mystery", "no text", "oceans", 
	"on/off", "one more", "orbital maze", "path", "pets", "pirates", "plants", 
	"platformer no jumps", "plushy", "portals", "present", "primitive", "production", 
	"progression", "radioactive", "rage game", "rebuild", "reflection", "repeat", "retro", 
	"reversal", "revolution", "robot", "rotating", "rotation", "santa", "sea monster", 
	"shop to drop", "shuffling", "simple shapes", "simulator", "sinking", "skeletons", 
	"snack food", "sneak to survive", "snow day", "social media", "space", "spacebar only", 
	"speedrun", "spiders", "spinning cubes", "spooky food", "strawberry", "superfast", 
	"superhero", "surviving history", "swarm", "sweet treats", "switches & buttons", 
	"synchronicity", "tag", "tagalong", "text-based", "thanksgiving", "through the portal", 
	"time loop", "together", "tower", "tower defense", "treasure hunt", "trickshot", 
	"try something new", "turkey", "tycoon", "typing", "unexpected", "unlucky", "upgrade", 
	"upside down", "vacation", "vaporwave", "virus", "void", "wallet", "web", "wheel", 
	"wibbly wobbly", "winter", "wrap around", "zen", "zombies", "zoology"
]


var current_index = 0


onready var word_label = $WordLabel


onready var left_button = $LeftButton
onready var right_button = $RightButton


func _ready():

	word_label.text = words[current_index]


	left_button.connect("pressed", self, "_on_LeftButton_pressed")
	right_button.connect("pressed", self, "_on_RightButton_pressed")


func _on_LeftButton_pressed():

	current_index -= 1
	if current_index < 0:
		current_index = words.size() - 1  
	word_label.text = words[current_index]


func _on_RightButton_pressed():

	current_index += 1
	if current_index >= words.size():
		current_index = 0  
	word_label.text = words[current_index]
