extends KinematicBody2D

onready var idle = get_node("states/idle")
onready var flashlight = get_node("states/flashlight")
onready var collisor = get_node("collisionShape")

export var velocity = 400
var vetor = Vector2(0, 0)

func _ready():
	pass

func _process(delta):
	look_at(get_global_mouse_position())
	verificaEstado()
	move(delta)

func verificaEstado():
	var verif = verificaItens()
	
	if Input.is_action_pressed("botaoRapido1") and verif and idle.visible:
		print("lanterna equipada!")
		idle.visible = false
		flashlight.visible = true
		
	if Input.is_action_pressed("botaoRapido2") and verif and flashlight.visible:
		print("lanterna desequipada!")
		idle.visible = true
		flashlight.visible = false

func verificaItens():
	for i in Itens.listaDeItens:
		if i == "lanterna":
			return true

func move(delta):
	
	vetor.x = 0
	vetor.y = 0
	
	if Input.is_action_pressed("cima"):
		vetor.y -= 1
	if Input.is_action_pressed("baixo"):
		vetor.y += 1
	if Input.is_action_pressed("direita"):
		vetor.x -= 1
	if Input.is_action_pressed("esquerda"):
		vetor.x += 1
	vetor = vetor.normalized()
	move_and_collide(vetor * velocity * delta)	
