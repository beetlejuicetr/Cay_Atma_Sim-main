extends Control


onready var cay_n = get_node("Panel/cay_name")
onready var cay_p = get_node("Panel/cay_pop")
onready var cay_p_p = get_node("Panel/özellikler/pop_plus/deger")
onready var cay_durum = get_node("Panel/özellikler/durum/deger")

func _ready():
	pass



func _satin_alindi_bildirisi():
	pass

func _changed_item(sector,cay):
	if cay != "cay0":
		$"Panel/özellikler".visible = true
		var sd = ShopData.Sectors
		print(sd[sector][cay]["name"])
		cay_n.text = sd[sector][cay]["name"]
		cay_p.text = str(sd[sector][cay]["price"])
		cay_p_p.text = str(sd[sector][cay]["pop_plus"])
		if sd[sector][cay]["status"] == false:
			if ShopData.Money >= sd[sector][cay]["price"]:
				cay_durum.text = "Satın Al!"
				cay_durum.set("custom_colors/font_color",Color.green)
			else:
				cay_durum.text = "Satın Al!"
				cay_durum.set("custom_colors/font_color",Color.red)
		else:
			cay_durum.text = "Alındı!"
			cay_durum.set("custom_colors/font_color",Color.green)
	else:
		cay_n.text = ""
		cay_p.text = ""
		$"Panel/özellikler".visible = false
	pass
