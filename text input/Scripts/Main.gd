extends Node2D


var predefined_words = [
	"10,000", "alchemy", "anti-hero", "around the world", "asteroid", "battlefield", 
	"beat the heat", "beat the odds", "big vs small", "big wheel", "board game", 
	"bone wizard", "boss fight", "bouncing", "break it", "broken", "bubble", "bugs", 
	"buttons", "calibration", "can you", "candy", "cats", "cats in space", "cellular", 
	"chaos", "chat", "chill", "circles", "claustrophobic", "click", "collect", "color", 
	"confined", "connections", "countdown", "crosshairs", "dancing", "dangerous wilds", 
	"darkness", "deadline", "destruction", "digging", "distraction", "divided", "dragons", 
	"drop", "ducks", "dungeon crawl", "dungeons", "eating", "egg", "environment", 
	"exploration", "explosions", "fall damage", "falling", "filter", "finality", "fire", "fire drill", 
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
	"wibbly wobbly", "winter", "wrap around", "zen", "zombies", "zoology", "extermination", 
	"falling", "pipes n mushrooms, chaotic"
]



var used_words = []


onready var input_box = $LineEdit


onready var submit_button = $Button


onready var notification_label = $Label


var timer = null

func _ready():

	submit_button.connect("pressed", self, "_on_submit_button_pressed")

	timer = Timer.new()
	timer.wait_time = 4
	timer.one_shot = true
	timer.connect("timeout", self, "_on_timer_timeout")
	add_child(timer)

func _on_submit_button_pressed():
	var word = input_box.text.strip_edges().to_lower()
	
	if word.empty():
		notification_label.text = "please type a word."
		notification_label.visible = true
		timer.start()
		return
	
	if word in predefined_words or word in used_words:
		notification_label.text = "word already used"
		notification_label.visible = true
		timer.start()
	else:
		used_words.append(word)
		notification_label.text = "word accepted"
		notification_label.visible = true
		timer.start()
	

	input_box.text = ""

func _on_timer_timeout():
	notification_label.visible = false
