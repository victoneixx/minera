vel = 2;
velh = 0;
velv = 0;

controles = function(){
	var _right, _left, _up, _down;
	_right = keyboard_check(ord("D"));
	_left = keyboard_check(ord("A"));
	_up = keyboard_check(ord("W"));
	_down = keyboard_check(ord("S"));
	
	velh = (_right - _left)*vel;
	x += velh;
	x = clamp(x, sprite_width/2, room_width - sprite_width/2);
	
	velv = (_down - _up)*vel;
	y += velv;
	y = clamp(y, sprite_height/2, room_height - sprite_height/2);	
}