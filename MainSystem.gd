extends Spatial

const SQLite = preload("res://addons/godot-sqlite/bin/gdsqlite.gdns")

var db # database object
var db_name = "res://DataStore/database" # Path to db

# Declare member variables here. Examples:
# var a = 2


# Called when the node enters the scene tree for the first time.
func _ready():
	commitDataToDB()
	pass # Replace with function body.


func commitDataToDB():
	db = SQLite.new()
	db.path = db_name
	db.open_db()
	var tablename = "PlayerInfo"
	var dict: Dictionary = Dictionary()
	dict["Name"] = 	"this is a test user"
	dict["Score"] = 5000
	
	db.insert_row(tablename,dict)

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
