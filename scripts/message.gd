
extends Control

var line
var hud_title
var hud_message
var hud_button_close
var active = false
var flag

func show_message(title, message, flag = 2):
	self.active = true
	self.hud_title.set_text(title)
	self.hud_message.set_text(message)
	self.hud_message.set_uppercase()
	self.set_flag(flag)
	self.raise()
	return

func close_message():
	self.active = false
	#self.hide()

func is_visible():
	return self.active

func set_flag(color_code):
	self.flag.change_flag(color_code);

func _ready():
	self.hud_title = self.get_node("title")
	self.hud_message = self.get_node("message")
	self.hud_button_close = self.get_node("button")
	self.flag = self.get_node("flag")
	self.hud_button_close.connect("pressed",self,"close_message")
	pass


