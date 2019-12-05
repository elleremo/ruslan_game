extends Node

# Declare member variables here. Examples:
# var a = 2
# var b = "text"
export var slow = 1;
var count=0;
onready var main= get_tree().root.get_node('/root/main');
onready var mus:AudioStreamPlayer2D = main.get_node('music')
var au;

func get_input():
	
	
	var space_down = Input.is_action_pressed("space");
	var space_up = Input.is_action_just_released("space");
	
	if space_down:
		if slow >= 0.3:
			slow -=0.03;
			#mus.stop()
			mus.pitch_scale = lerp(mus.pitch_scale, 0.5, 0.08)
			au.pitch_scale = lerp(au.pitch_scale, 0.7, 0.08)
		#camera = DB.main.get_node('my_camera')
		 
		
		#cam.offset_h = rand_range(-.5,.5);
		#cam.offset_v = rand_range(-.5,.5);
		#print(cam);
#		else:
#			count +=1;
#			print(count);
	
	if !space_down :
		if slow <= 1:
			slow +=0.02
		if slow>1:
			slow=1
		
		mus.pitch_scale = lerp(mus.pitch_scale, 1, 0.04)
		au.pitch_scale = lerp(au.pitch_scale, 1, 0.04)
		#cam.offset_h = 0;
		#cam.offset_v = 0;
		#print("SLOW")
# Called when the node enters the scene tree for the first time.
func _ready():
	print('FROM GLOBAL')
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	get_input()
	#print(slow)
	
	pass
