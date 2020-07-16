extends Node2D

func _ready():
	pass

func _process(delta):
	pass

func _on_StaticBody2D_body_shape_entered(body_id, body, body_shape, area_shape):
	if body.name == "player":
		Itens.guardaItens("lanterna")
		print("Você adquiriu: Lanterna!")
		queue_free()
