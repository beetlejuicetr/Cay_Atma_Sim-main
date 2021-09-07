extends Node

var SAVE_DIR = str(OS.get_system_dir(OS.SYSTEM_DIR_DOCUMENTS)+"/Cay_Atma_Sim/DATA/")
var save_save ={
	"1":"SECTOR.data",
	"2":"TEA.data",
	"3":"MONEY.data",
	"4":"SECTOR_MAT.data",
}
var save_gim ={
	"1":ShopData.Sectors,
	"2":ShopData.Current_Cay_Paketi,
	"3":ShopData.Money,
	"4":DATA.Reyon_Mat,
}
var save_path = SAVE_DIR +"test.txt" 
var SHOP_DATA = ShopData.Sectors
var SHOP_DATA2 = ShopData.Current_Cay_Paketi
var SHOP_DATA3 = ShopData.Money
var DATA_ = DATA.WUMPUS
var DATA_REYON = DATA.Reyon_Mat

### kaldığım yer data belirleme
var a = "1111kelek0000"
func _ready():
	print(save_path,int("1"))
	_save()
	_load()
func _save():
	for i in save_save:
		
		save_path = SAVE_DIR + save_save[i]
		
		print(save_path)
		var dir = Directory.new()
		if !dir.dir_exists(SAVE_DIR):
			dir.make_dir_recursive(SAVE_DIR)
		var file = File.new()
		var error = file.open_encrypted_with_pass(save_path,File.WRITE,"test")
		if error == OK:
			file.store_var(save_gim[i])
			file.close()
			print("data _saved")
	pass
func _load():
	for i in save_save:
		save_path = SAVE_DIR + save_save[i]
		var file = File.new()
		if file.file_exists(save_path):
			var error = file.open_encrypted_with_pass(save_path,File.READ,"test")
			if error == OK:
				var player_dt = file.get_var()
				print(player_dt)
		print("data loaded")
