extends Node


onready var Reyon1_kilit = get_node("RAF/reyon1/Area")




# Called when the node enters the scene tree for the first time.
func _ready():
	#reyon1 settings
	Reyon1_kilit.connect("mouse_entered",self,"_Reyon1_MAIN_kilit")
	Reyon1_kilit.connect("mouse_exited",Reyon1_kilit,"_Reyon1_MAIN_kilit")
	
	pass # Replace with function body.


# Reyon-1 # Reyon-1 # Reyon-1 # Reyon-1 # Reyon-1 # Reyon-1
func _Reyon1_MAIN_kilit():
	print("as")
	pass
