extends Node


var txt = {
	"caycur" : preload("res://Probs/Caylar/textures/caycur.png"),
	"tipton" : preload("res://Probs/Caylar/textures/tipton_paket.png"),
	"dodus" : preload("res://Probs/Caylar/textures/dodus_paket.png"),
	"alpha_tea": preload("res://Probs/Caylar/textures/alphatea_paket.png")
}

var msh = {
	"cay1":preload("res://Datalar_VE_UI/Shop/cay_meshs/cay.tres"),
	"cay2":preload("res://Datalar_VE_UI/Shop/cay_meshs/cay2.tres")
}

var Sectors = {
	# bu sector 300 populasyon ile satın alınır
	#isim|ücret|+populasyon
	#cay1 150 , 2
	#cay2 320 , 4
	#cay3 580 , 6
	#cay4 1100 , 10
	"sector1":{"status":false,"price":300,
	"cay1":{"status":false,"name":"Caycur","price":150,"texture":txt["caycur"],"mesh":msh["cay1"],"pop_plus":2},
	"cay2":{"status":false,"name":"Tipton","price":320,"texture":txt["tipton"],"mesh":msh["cay1"],"pop_plus":4},
	"cay3":{"status":false,"name":"Doduş","price":580,"texture":txt["dodus"],"mesh":msh["cay1"],"pop_plus":6},
	"cay4":{"status":false,"name":"Alpha Tea","price":1100,"texture":txt["alpha_tea"],"mesh":msh["cay1"],"pop_plus":10}},
	

	
	# bu sector 2500 populasyon ile satın alınır
	#isim|ücret|+populasyon
	#cay1 1200 , 12
	#cay2 2250 , 16
	#cay3 5300 , 20
	#cay4 10500 , 25
	"sector2":{"status":false,"price":2500,
	"cay1":{"status":false,"name":"Caycur","price":1200,"texture":null,"mesh":msh["cay2"],"pop_plus":12},
	"cay2":{"status":false,"name":"Tipton","price":2250,"texture":null,"mesh":msh["cay2"],"pop_plus":16},
	"cay3":{"status":false,"name":"Doduş","price":5300,"texture":null,"mesh":msh["cay2"],"pop_plus":20},
	"cay4":{"status":false,"name":"Alpha Tea","price":10500,"texture":null,"mesh":msh["cay2"],"pop_plus":25}},
	
	
	
	# bu sector 12000 populasyon ile satın alınır
	#isim|ücret|+populasyon
	#cay1 13000 , 27
	#cay2 17050 , 30
	#cay3 24100 , 34
	#cay4 28500 , 40
	"sector3":{"status":false,"price":12000,
	"cay1":{"status":false,"name":"Caycur","price":13000,"texture":null,"mesh":msh["cay1"],"pop_plus":27},
	"cay2":{"status":false,"name":"Tipton","price":17050,"texture":null,"mesh":msh["cay1"],"pop_plus":30},
	"cay3":{"status":false,"name":"Doduş","price":24100,"texture":null,"mesh":msh["cay1"],"pop_plus":34},
	"cay4":{"status":false,"name":"Alpha Tea","price":28500,"texture":null,"mesh":msh["cay1"],"pop_plus":40}},
	
	
	
	# bu sector 21000 populasyon ile satın alınır
	#isim|ücret|+populasyon
	#cay1 30000 , 42
	#cay2 36000 , 46
	#cay3 41500 , 50 "mesh":preload(""),
	#cay4 54500 , 59
	"sector4":{"status":false,"price":21000,
	"cay1":{"status":false,"name":"Caycur","price":30000,"texture":null,"mesh":msh["cay2"],"pop_plus":42},
	"cay2":{"status":false,"name":"Tipton","price":36000,"texture":null,"mesh":msh["cay2"],"pop_plus":46},
	"cay3":{"status":false,"name":"Doduş","price":41500,"texture":null,"mesh":msh["cay2"],"pop_plus":50},
	"cay4":{"status":false,"name":"Alpha Tea","price":54500,"texture":null,"mesh":msh["cay2"],"pop_plus":59}},
	
}

var Money = 5100

var Current_Cay_Paketi = {
	"texture":null,
	"mesh":null,
	"pop_plus":null
}

