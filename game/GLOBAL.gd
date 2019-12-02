extends Node

# Declare member variables here. Examples:
# var a = 2
# var b = "text"
export var slow = 1;
var count=0;

func get_input():
	var space_down = Input.is_action_pressed("space");
	var space_up = Input.is_action_just_released("space");
	
	if space_down:
		if slow >= 0.3:
			slow -=0.03;
#		else:
#			count +=1;
#			print(count);
	
	if !space_down and slow != 1:
		if slow <= 1:
			slow +=0.02
		if slow>1:
			slow=1	
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
