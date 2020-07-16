extends Node

var listaDeItens = []

#var indiceItens = {
#	"lanterna" : "res://scenes/lanterna.tscn"
#}

func _ready():
	pass

func _process(delta):
	pass

func guardaItens(item):
	listaDeItens.append(item)
#	print(listaDeItens.find(item))
#	var carregaItem = load(indiceItens.get(item))
#	carregaItem = carregaItem.instance()
#	listaDeItens.append(carregaItem)
#	print(listaDeItens[0].name)
#	get_parent().add_child(carregaItem)
