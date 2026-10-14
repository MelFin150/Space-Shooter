extends Node2D

var gameOn = false

func StartGame():
	gameOn = true

func _ready() -> void:
	StartGame()
