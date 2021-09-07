extends Node

onready var mat1 = preload("res://Datalar_VE_UI/Shop/reyon mat/reyon1.tres")
onready var mat2 = preload("res://Datalar_VE_UI/Shop/reyon mat/reyon2.tres")
onready var mat3 = preload("res://Datalar_VE_UI/Shop/reyon mat/reyon3.tres")
onready var mat4 = preload("res://Datalar_VE_UI/Shop/reyon mat/reyon4.tres")

func _set_material():
	
	mat1.rim_enabled = DATA.Reyon_Mat["reyon1"]["rim_stat"]
	mat1.rim = DATA.Reyon_Mat["reyon1"]["rim"]
	mat1.rim_tint = DATA.Reyon_Mat["reyon1"]["rim_tint"]
	mat1.albedo_color = DATA.Reyon_Mat["reyon1"]["color"]
	
	
	mat2.rim_enabled = DATA.Reyon_Mat["reyon2"]["rim_stat"]
	mat2.rim = DATA.Reyon_Mat["reyon2"]["rim"]
	mat2.rim_tint = DATA.Reyon_Mat["reyon2"]["rim_tint"]
	mat2.albedo_color = DATA.Reyon_Mat["reyon2"]["color"]
	
	
	mat3.rim_enabled = DATA.Reyon_Mat["reyon3"]["rim_stat"]
	mat3.rim = DATA.Reyon_Mat["reyon3"]["rim"]
	mat3.rim_tint = DATA.Reyon_Mat["reyon3"]["rim_tint"]
	mat3.albedo_color = DATA.Reyon_Mat["reyon3"]["color"]
	
	
	mat4.rim_enabled = DATA.Reyon_Mat["reyon4"]["rim_stat"]
	mat4.rim = DATA.Reyon_Mat["reyon4"]["rim"]
	mat4.rim_tint = DATA.Reyon_Mat["reyon4"]["rim_tint"]
	mat4.albedo_color = DATA.Reyon_Mat["reyon4"]["color"]
	
	pass
