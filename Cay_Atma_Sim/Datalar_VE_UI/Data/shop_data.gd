extends Node

var Sectors = {
	# bu sector 300 populasyon ile satın alınır
	#isim|ücret|+populasyon
	#cay1 150 , 2
	#cay2 320 , 4
	#cay3 580 , 6
	#cay4 1100 , 10
	"sector1":{"status":false,"price":300,"cay1":{"status":false,"price":150,"texture":preload("res://Probs/Caylar/textures/caycur.png"),"pop_plus":2},"cay2":{"status":false,"price":320,"texture":preload("res://Probs/Caylar/textures/tipton_paket.png"),"pop_plus":4},"cay3":{"status":false,"price":580,"texture":preload("res://Probs/Caylar/textures/dodus_paket.png"),"pop_plus":6},"cay4":{"status":false,"price":1100,"texture":preload("res://Probs/Caylar/textures/alphatea_paket.png"),"pop_plus":10}},
	
	
	
	# bu sector 2500 populasyon ile satın alınır
	#isim|ücret|+populasyon
	#cay1 1200 , 12
	#cay2 2250 , 16
	#cay3 5300 , 20
	#cay4 10500 , 25
	"sector2":{"status":false,"price":2500,"cay1":{"status":false,"price":1200,"texture":null,"pop_plus":12},"cay2":{"status":false,"price":2250,"texture":null,"pop_plus":16},"cay3":{"status":false,"price":5300,"texture":null,"pop_plus":20},"cay4":{"status":false,"price":10500,"texture":null,"pop_plus":25}},
	
	
	
	# bu sector 12000 populasyon ile satın alınır
	#isim|ücret|+populasyon
	#cay1 13000 , 27
	#cay2 17050 , 30
	#cay3 24100 , 34
	#cay4 28500 , 40
	"sector3":{"status":false,"price":12000,"cay1":{"status":false,"price":13000,"texture":null,"pop_plus":27},"cay2":{"status":false,"price":17050,"texture":null,"pop_plus":30},"cay3":{"status":false,"price":24100,"texture":null,"pop_plus":34},"cay4":{"status":false,"price":28500,"texture":null,"pop_plus":40}},
	
	
	
	# bu sector 21000 populasyon ile satın alınır
	#isim|ücret|+populasyon
	#cay1 30000 , 42
	#cay2 36000 , 46
	#cay3 41500 , 50
	#cay4 54500 , 59
	"sector4":{"status":false,"price":21000,"cay1":{"status":false,"price":30000,"texture":null,"pop_plus":42},"cay2":{"status":false,"price":36000,"texture":null,"pop_plus":46},"cay3":{"status":false,"price":41500,"texture":null,"pop_plus":50},"cay4":{"status":false,"price":54500,"texture":null,"pop_plus":59}},
	
}

var Money = 5100

var Current_Cay_Paketi = {
	"texture":null,
	"pop_plus":null
}

