
;Project Spaceship Game

.model large
.stack
.data
	
	ball_x dw 0a0h
	ball_y dw 0b9h
	ball_size dw 08h
	time db 0 
	ball_velocity_x dw 05h
	ball_velocity_y dw 05h
	
	ball_velocity_y2 dw 03h
	window_w dw 140h
 	window_h dw 0C8h
	window_bounds dw 6
 	ball_origional_x dw 0A0h
 	ball_origional_y dw 64h
	
	;paddle 1
	paddle_left_x dw 0a0h
	paddle_left_y dw 0b9h
	paddle_w dw 08h
	paddle_h dw 0fh
	
	
	
	;paddle2
	paddle2_left_x dw 91h
	paddle2_left_y dw 0beh
	paddle2_w dw 0ah 
	paddle2_h dw 0fh
	
	;paddle3
	paddle3_left_x dw 0adh
	paddle3_left_y dw 0beh
	paddle3_w dw 0ah 
	paddle3_h dw 0fh
	
	;paddle right 
	paddle_right_x dw 230h
	paddle_right_y dw 165h
	paddler_w dw 8h 
	paddler_h dw 20h
	
	pad_up dw 00b7h
	
	;score db 0
	text db '0','$'
	text2 db 'S','$'
	
	
    	
	
	player_one_points db 0	
	
	level_1_text db 'Level 1','$'
	level_1_end_text db 'Level 1 Completed !','$'
	level_1_end_text_2 db 'Press P to Start Level 2 !','$'
	text_main_menu db 'Press E to Display Main Menu','$'
	level_1_end_text_3 db 'Press T to start Level 2','$'
	
	
	;variables for the main menu text
	text_main_menu_title db 'Main Menu','$'
	text_main_menu_startthegame db 'Press - S Key to Start Level 1','$'
	text_main_menu_quit  db 'Press - Q Key to Exit the Game','$' 
	text_main_menu_title2 db 'Press T to start level 2 ','$'
	
	level_1 db 1
	level_2 db 0
	level_3 db 0
	level_2_title db 'Level 2','$'
	level_3_title db 'Level 3','$'
	current_screen db 0
	exiting_game db 0
	
	alien_fire dw 5
	counter1 db 0
	counter2 db 0
	counter3 db 0
	counter4 db 0
	paddle_velocity dw 05h
	alien1                 DB 0Fh,0Fh,0Fh,0Fh,0Fh,0Fh,0Fh,0Fh,0Fh,00h,00h,00h,00h     ;  0
        DB 00h,00h,00h,0Fh,0Fh,0Fh,0Fh,07h,0Fh,0Fh,0Fh,0Fh,00h     ;  1
        DB 00h,00h,00h,00h,00h,00h,0Fh,0Fh,0Fh,0Fh,08h,0Fh,0Fh     ;  2
        DB 0Fh,0Fh,00h,00h,00h,00h,00h,00h,00h,0Fh,0Fh,0Fh,07h     ;  3
        DB 03h,07h,0Fh,0Fh,0Fh,00h,00h,00h,00h,00h,00h,00h,0Fh     ;  4
        DB 0Fh,07h,07h,03h,07h,07h,0Fh,0Fh,00h,00h,00h,00h,00h     ;  5
        DB 00h,00h,0Fh,0Fh,08h,07h,03h,07h,08h,0Fh,0Fh,00h,00h     ;  6
        DB 00h,00h,00h,00h,00h,0Fh,07h,03h,08h,03h,08h,03h,07h     ;  7
        DB 0Fh,00h,00h,00h,00h,00h,00h,00h,0Fh,08h,01h,01h,08h     ;  8
        DB 01h,01h,08h,0Fh,00h,00h,00h,00h,00h,00h,00h,07h,08h     ;  9
        DB 01h,00h,08h,01h,01h,08h,07h,00h,00h,00h,00h,00h,00h     ; 10
        DB 00h,07h,03h,08h,01h,03h,01h,08h,03h,07h,00h,00h,00h     ; 11
        DB 00h,00h,00h,00h,07h,08h,07h,08h,03h,08h,07h,08h,07h     ; 12
        DB 00h,00h,00h,00h,00h,00h,00h,08h,0Fh,0Fh,07h,01h,07h     ; 13
        DB 0Fh,0Fh,08h,00h,00h,00h,00h,00h,00h,00h,07h,0Fh,0Fh     ; 14
        DB 0Fh,08h,0Fh,0Fh,0Fh,07h,00h,00h,00h,00h,00h,00h,00h     ; 15
        DB 0Fh,0Fh,0Fh,0Fh,07h,0Fh,0Fh,0Fh,0Fh,00h,00h,00h,00h     ; 16
        DB 00h,00h,00h,0Fh,0Fh,0Fh,0Fh,0Fh,0Fh,0Fh,0Fh,0Fh,00h     ; 17
        DB 00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h     ; 18
        DB 00h,00h,00h,00h,00h,00h,00h,00h,00h
	

	alien1_x dw 0fah
	alien1_y dw 0fah
	
	me         DB 00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h     ;  0
        DB 00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h     ;  1
        DB 00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h     ;  2
        DB 00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,01h     ;  3
        DB 00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,01h     ;  4
        DB 01h,00h,00h,00h,00h,00h,00h,00h,00h,00h,01h,01h,00h,00h,00h     ;  5
        DB 00h,00h,00h,01h,00h,00h,00h,00h,00h,00h,01h,00h,00h,01h,00h     ;  6
        DB 00h,01h,00h,01h,01h,00h,00h,00h,00h,00h,00h,00h,01h,00h,00h     ;  7
        DB 01h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,01h,00h,01h,01h     ;  8
        DB 00h,00h,00h,00h,00h,01h,00h,00h,00h,00h,00h,00h,00h,00h,00h     ;  9
        DB 00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h     ; 10
        DB 01h,00h,01h,00h,00h,00h,01h,00h,00h,00h,00h,00h,00h,00h,00h     ; 11
        DB 00h,00h,01h,00h,00h,00h,01h,00h,00h,00h,00h,00h,00h,00h,00h     ; 12
        DB 00h,00h,00h,00h,00h,01h,00h,01h,00h,00h,00h,00h,00h,00h,00h     ; 13
        DB 00h,00h,00h,00h,00h,01h,00h,00h,00h,00h,00h,00h,00h,00h,00h     ; 14
        DB 00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h     ; 15
        DB 00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h     ; 16
        DB 00h
		String_Data11 byte "Please Enter Player Name :$"
		
		me_x dw 0fah
		me_y dw 0fah
	blue         DB 00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h     ;  0
        DB 00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h     ;  1
        DB 00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h     ;  2
        DB 00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,06h,00h,00h,00h,00h,00h     ;  3
        DB 00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,06h     ;  4
        DB 00h,00h,06h,00h,00h,00h,06h,00h,00h,00h,00h,00h,00h,00h,00h,00h     ;  5
        DB 00h,00h,00h,00h,00h,00h,00h,0Eh,00h,00h,06h,00h,00h,06h,06h,00h     ;  6
        DB 00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h     ;  7
        DB 06h,0Eh,0Eh,0Eh,06h,06h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h     ;  8
        DB 00h,00h,00h,00h,00h,00h,00h,04h,0Eh,0Eh,07h,07h,0Eh,06h,00h,00h     ;  9
        DB 00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,06h     ; 10
        DB 0Eh,0Fh,00h,08h,0Eh,0Eh,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h     ; 11
        DB 00h,00h,00h,00h,00h,00h,00h,0Eh,0Eh,0Fh,07h,07h,0Eh,0Eh,06h,00h     ; 12
        DB 00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,06h,0Eh     ; 13
        DB 0Eh,0Fh,0Fh,0Fh,0Eh,0Eh,06h,00h,00h,00h,00h,00h,00h,00h,00h,00h     ; 14
        DB 00h,00h,00h,00h,00h,00h,06h,0Eh,0Eh,0Eh,07h,0Eh,0Eh,0Eh,06h,00h     ; 15
        DB 00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,0Eh,0Eh     ; 16
        DB 0Eh,0Eh,0Eh,0Eh,0Eh,0Eh,0Eh,04h,00h,00h,00h,00h,00h,00h,00h,00h     ; 17
        DB 00h,00h,00h,00h,00h,06h,06h,0Eh,0Eh,0Eh,0Eh,0Eh,0Eh,0Eh,0Eh,06h     ; 18
        DB 00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,06h,0Eh     ; 19
        DB 0Eh,0Eh,0Eh,0Eh,0Eh,0Eh,0Eh,04h,06h,00h,00h,00h,00h,00h,00h,00h     ; 20
        DB 00h,00h,00h,00h,06h,00h,0Eh,0Eh,0Eh,0Eh,0Eh,0Eh,0Eh,0Eh,0Eh,06h     ; 21
        DB 06h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,06h,00h,0Eh,0Eh     ; 22
        DB 0Eh,0Eh,0Eh,0Eh,0Eh,0Eh,0Eh,06h,00h,00h,00h,00h,00h,00h,00h,00h     ; 23
        DB 00h,00h,00h,04h,06h,00h,0Eh,0Eh,0Eh,0Eh,0Eh,0Eh,0Eh,0Eh,0Eh,06h     ; 24
        DB 06h,06h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,0Eh,0Eh     ; 25
        DB 0Eh,0Eh,0Eh,0Eh,0Eh,0Eh,0Eh,06h,00h,00h,00h,00h,00h,00h,00h,00h     ; 26
        DB 00h,00h,00h,00h,00h,00h,0Eh,0Eh,0Eh,0Eh,0Eh,0Eh,0Eh,0Eh,0Eh,06h     ; 27
        DB 00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,0Eh,0Eh     ; 28
        DB 0Eh,0Eh,0Eh,0Eh,0Eh,0Eh,0Eh,06h,00h,00h,00h,00h,00h,00h,00h,00h     ; 29
        DB 00h,00h,00h,00h,00h,00h,06h,0Eh,0Eh,0Eh,0Eh,0Eh,0Eh,0Eh,0Eh,00h     ; 30
        DB 00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,06h     ; 31
        DB 0Eh,0Eh,0Eh,0Eh,0Eh,0Eh,04h,00h,00h,00h,00h,00h,00h,00h,00h,00h     ; 32
        DB 00h,00h,00h,00h,00h,00h,00h,00h,06h,00h,04h,04h,06h,00h,00h,00h     ; 33
        DB 00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h     ; 34
        DB 06h,00h,00h,00h,06h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h     ; 35
        DB 00h,00h,00h,00h,00h,00h,00h,00h,06h,00h,00h,00h,06h,00h,00h,00h     ; 36
        DB 00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h     ; 37
        DB 00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h     ; 38
        DB 00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h     ; 39
        DB 00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h     ; 40
        DB 00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h     ; 41
        DB 00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h     ; 42
        DB 00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h     ; 43
        DB 00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h     ; 44
        DB 00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h     ; 45
        DB 00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h     ; 46
        DB 00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h     ; 47
        
		blue_x dw 0fah
		blue_y dw 0fah
	  
	    bana              DB 00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h     ;  0
        DB 00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h     ;  1
        DB 00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,08h,00h,00h,00h,00h,00h     ;  2
        DB 00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h     ;  3
        DB 00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,08h,00h,00h,00h     ;  4
        DB 00h,00h,08h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h     ;  5
        DB 00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h     ;  6
        DB 00h,00h,00h,00h,08h,00h,00h,00h,00h,00h,07h,08h,00h,00h,00h,00h     ;  7
        DB 00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h     ;  8
        DB 00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,07h,08h,00h,00h     ;  9
        DB 00h,00h,07h,07h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h     ; 10
        DB 00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h     ; 11
        DB 00h,00h,00h,08h,07h,08h,00h,00h,00h,00h,07h,0Fh,08h,00h,00h,00h     ; 12
        DB 00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h     ; 13
        DB 00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,07h,07h,08h,00h,00h     ; 14
        DB 00h,00h,07h,07h,07h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h     ; 15
        DB 00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h     ; 16
        DB 00h,00h,08h,0Fh,07h,08h,00h,00h,00h,00h,07h,07h,0Fh,08h,00h,00h     ; 17
        DB 00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h     ; 18
        DB 00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,07h,07h,07h,08h,00h,00h     ; 19
        DB 00h,00h,08h,07h,0Fh,0Fh,08h,00h,00h,00h,00h,00h,00h,00h,00h,00h     ; 20
        DB 00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h     ; 21
        DB 00h,07h,0Fh,07h,07h,06h,00h,00h,00h,00h,08h,07h,07h,0Fh,0Fh,08h     ; 22
        DB 00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,01h,09h,09h,01h,00h,00h     ; 23
        DB 00h,00h,00h,00h,00h,00h,00h,00h,07h,0Fh,0Fh,07h,07h,00h,00h,00h     ; 24
        DB 00h,00h,00h,07h,07h,07h,0Fh,0Fh,08h,00h,00h,00h,00h,00h,00h,00h     ; 25
        DB 01h,09h,09h,09h,09h,09h,01h,01h,00h,00h,00h,00h,00h,00h,00h,07h     ; 26
        DB 0Fh,0Fh,07h,07h,08h,00h,00h,00h,00h,00h,00h,08h,07h,07h,07h,0Fh     ; 27
        DB 0Fh,08h,00h,00h,00h,00h,01h,01h,09h,09h,09h,09h,09h,09h,09h,01h     ; 28
        DB 01h,00h,00h,00h,00h,00h,07h,0Fh,0Fh,07h,07h,07h,04h,00h,00h,00h     ; 29
        DB 00h,00h,00h,00h,07h,07h,07h,07h,0Fh,0Fh,07h,00h,00h,01h,01h,01h     ; 30
        DB 09h,09h,01h,01h,01h,09h,09h,09h,01h,01h,01h,00h,08h,0Fh,0Fh,0Fh     ; 31
        DB 07h,07h,07h,08h,00h,00h,00h,00h,00h,00h,00h,00h,08h,07h,07h,07h     ; 32
        DB 07h,0Fh,0Fh,07h,08h,00h,01h,01h,09h,01h,01h,01h,01h,01h,09h,01h     ; 33
        DB 01h,01h,00h,07h,0Fh,0Fh,0Fh,07h,07h,07h,07h,00h,00h,00h,00h,00h     ; 34
        DB 00h,00h,00h,00h,00h,08h,07h,08h,07h,07h,0Fh,0Fh,07h,00h,01h,01h     ; 35
        DB 09h,09h,01h,01h,01h,01h,09h,01h,01h,00h,08h,0Fh,0Fh,07h,07h,08h     ; 36
        DB 07h,07h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,08h,07h     ; 37
        DB 08h,07h,07h,07h,0Fh,00h,01h,09h,09h,09h,01h,01h,01h,09h,09h,09h     ; 38
        DB 01h,00h,08h,0Fh,07h,07h,08h,08h,07h,00h,00h,00h,00h,00h,00h,00h     ; 39
        DB 00h,00h,00h,00h,00h,00h,00h,08h,08h,00h,08h,07h,08h,00h,01h,09h     ; 40
        DB 09h,09h,09h,09h,09h,09h,09h,09h,01h,00h,00h,07h,07h,06h,08h,08h     ; 41
        DB 00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h     ; 42
        DB 00h,08h,00h,00h,00h,00h,01h,09h,09h,09h,09h,09h,09h,09h,09h,09h     ; 43
        DB 01h,01h,00h,00h,00h,00h,06h,00h,00h,00h,00h,00h,00h,00h,00h,00h     ; 44
        DB 00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,01h,01h,09h     ; 45
        DB 09h,09h,09h,09h,09h,09h,09h,09h,09h,01h,01h,00h,00h,00h,00h,00h     ; 46
        DB 00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h     ; 47
        DB 00h,00h,00h,00h,01h,01h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h     ; 48
        DB 09h,01h,01h,00h,00h,01h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h     ; 49
        DB 00h,00h,00h,00h,00h,00h,00h,00h,01h,01h,09h,01h,01h,01h,09h,09h     ; 50
        DB 09h,01h,09h,09h,09h,09h,01h,09h,09h,01h,01h,01h,09h,09h,01h,00h     ; 51
        DB 00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h     ; 52
        DB 01h,01h,09h,09h,09h,09h,01h,09h,09h,01h,01h,01h,01h,01h,09h,09h     ; 53
        DB 09h,01h,09h,09h,09h,01h,01h,01h,00h,00h,00h,00h,00h,00h,00h,00h     ; 54
        DB 00h,00h,00h,00h,00h,00h,00h,01h,01h,01h,01h,01h,01h,09h,09h,09h     ; 55
        DB 09h,09h,01h,01h,01h,01h,09h,09h,09h,09h,09h,01h,01h,01h,01h,01h     ; 56
        DB 00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h     ; 57
        DB 01h,00h,00h,01h,01h,01h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h     ; 58
        DB 09h,09h,01h,01h,00h,00h,00h,01h,00h,00h,00h,00h,00h,00h,00h,00h     ; 59
        DB 00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,01h,01h,09h     ; 60
        DB 09h,09h,09h,09h,09h,09h,09h,09h,01h,01h,01h,00h,00h,00h,00h,00h     ; 61
        DB 00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h     ; 62
        DB 00h,00h,00h,00h,00h,00h,00h,01h,01h,01h,09h,09h,09h,09h,01h,01h     ; 63
        DB 00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h     ; 64
        DB 00h,00h,00h,00h,00h,00h,00h,01h,00h,00h,07h,07h,08h,00h,00h,00h     ; 65
        DB 00h,01h,09h,09h,09h,09h,01h,00h,00h,00h,08h,08h,07h,08h,00h,01h     ; 66
        DB 00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h     ; 67
        DB 01h,00h,00h,08h,08h,08h,00h,00h,00h,00h,01h,00h,01h,01h,00h,00h     ; 68
        DB 00h,08h,08h,08h,08h,00h,01h,01h,00h,00h,00h,00h,00h,00h,00h,00h     ; 69
        DB 00h,00h,00h,00h,00h,00h,00h,00h,01h,01h,01h,01h,01h,01h,01h,01h     ; 70
        DB 00h,00h,00h,00h,00h,00h,00h,00h,01h,01h,01h,01h,01h,01h,01h,00h     ; 71
        DB 00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,01h,01h     ; 72
        DB 00h,01h,01h,01h,09h,09h,01h,01h,09h,01h,00h,00h,00h,01h,09h,01h     ; 73
        DB 01h,09h,09h,09h,01h,01h,01h,00h,01h,00h,00h,00h,00h,00h,00h,00h     ; 74
        DB 00h,00h,00h,00h,00h,00h,00h,01h,01h,01h,01h,01h,01h,09h,09h,09h     ; 75
        DB 01h,01h,01h,01h,01h,01h,01h,09h,09h,09h,01h,01h,01h,01h,01h,01h     ; 76
        DB 01h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h     ; 77
        DB 01h,01h,09h,09h,01h,01h,01h,01h,09h,09h,01h,01h,09h,09h,09h,09h     ; 78
        DB 01h,01h,01h,01h,09h,09h,01h,01h,00h,00h,00h,00h,00h,00h,00h,00h     ; 79
        DB 00h,00h,00h,00h,00h,00h,00h,00h,00h,01h,01h,01h,01h,01h,00h,01h     ; 80
        DB 01h,09h,09h,09h,09h,09h,09h,01h,00h,00h,01h,01h,01h,01h,01h,00h     ; 81
        DB 00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h     ; 82
        DB 00h,00h,08h,00h,00h,00h,01h,01h,01h,09h,09h,09h,09h,09h,01h,01h     ; 83
        DB 01h,01h,00h,00h,00h,08h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h     ; 84
        DB 00h,00h,00h,00h,00h,00h,00h,00h,08h,0Fh,0Fh,07h,04h,00h,01h,01h     ; 85
        DB 01h,01h,09h,09h,09h,09h,01h,01h,01h,01h,00h,08h,0Fh,0Fh,07h,08h     ; 86
        DB 00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,07h     ; 87
        DB 0Fh,0Fh,07h,07h,08h,00h,00h,00h,00h,01h,09h,09h,09h,01h,00h,00h     ; 88
        DB 00h,00h,00h,07h,07h,07h,0Fh,0Fh,08h,00h,00h,00h,00h,00h,00h,00h     ; 89
        DB 00h,00h,00h,00h,08h,08h,0Fh,07h,07h,07h,07h,07h,04h,08h,08h,04h     ; 90
        DB 00h,00h,01h,09h,01h,01h,00h,00h,04h,08h,08h,08h,07h,07h,07h,07h     ; 91
        DB 0Fh,07h,08h,00h,00h,00h,00h,00h,00h,08h,08h,07h,07h,07h,07h,07h     ; 92
        DB 07h,08h,08h,00h,08h,07h,07h,07h,08h,00h,00h,01h,01h,00h,00h,07h     ; 93
        DB 07h,07h,07h,00h,00h,08h,07h,07h,07h,07h,07h,07h,07h,08h,08h,00h     ; 94
        DB 00h,00h,08h,08h,08h,08h,08h,08h,00h,00h,00h,00h,08h,07h,07h,07h     ; 95
        DB 07h,07h,08h,08h,08h,08h,07h,07h,07h,07h,07h,00h,00h,00h,00h,00h     ; 96
        DB 08h,08h,08h,08h,08h,08h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h     ; 97
        DB 00h,00h,00h,00h,00h,07h,06h,08h,08h,07h,07h,07h,07h,07h,07h,08h     ; 98
        DB 08h,08h,08h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h     ; 99
        DB 00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h     ;100
        DB 00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h     ;101
        DB 00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h     ;102
        DB 00h,00h,00h,00h,00h,00h,08h,08h,07h,08h,08h,08h,08h,08h,08h,08h     ;103
        DB 07h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h     ;104
        DB 00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,01h,00h,07h     ;105
        DB 07h,07h,07h,07h,07h,07h,07h,07h,08h,00h,01h,00h,00h,00h,00h,00h     ;106
        DB 00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h     ;107
        DB 00h,00h,00h,00h,00h,01h,01h,00h,00h,00h,00h,00h,00h,00h,00h,00h     ;108
        DB 01h,01h,01h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h     ;109
        DB 00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,01h,09h,09h     ;110
        DB 09h,01h,01h,01h,01h,01h,09h,09h,09h,01h,00h,00h,00h,00h,00h,00h     ;111
        DB 00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h     ;112
        DB 00h,00h,00h,00h,00h,00h,01h,09h,09h,09h,09h,09h,09h,09h,09h,09h     ;113
        DB 01h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h     ;114
        DB 00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,01h     ;115
        DB 09h,09h,01h,01h,01h,01h,09h,09h,01h,00h,00h,00h,00h,00h,00h,00h     ;116
        DB 00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h     ;117
        DB 00h,00h,00h,00h,00h,00h,00h,00h,01h,01h,01h,01h,01h,01h,01h,01h     ;118
        DB 00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h     ;119
        DB 00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h     ;120
        DB 00h,01h,01h,01h,01h,01h,01h,00h,00h,00h,00h,00h,00h,00h,00h,00h     ;121
        DB 00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h     ;122
        DB 00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,01h,00h,00h,00h,00h     ;123
        DB 00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h     ;124
        DB 00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h     ;125
        DB 00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h     ;126
        DB 00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h     ;127
        DB 00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h     ;128
        DB 00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h     ;129
        DB 00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h     ;130
        DB 00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h     ;131
        DB 00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h     ;132
        DB 00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h     ;133
        DB 00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h     ;134
        DB 00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h     ;135
        DB 00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h     ;136
        DB 00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h     ;137
        DB 00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h     ;138
        DB 00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h     ;139


        ball2_x dw 20h
		ball2_y dw 20h
		ball2_size dw 8h
		
		bana_x dw 20h
		bana_y dw 20h
		banagaya            DB 00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h     ;  0
        DB 00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h     ;  1
        DB 00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h     ;  2
        DB 00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,08h,08h,08h,08h,08h,08h     ;  3
        DB 00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h     ;  4
        DB 08h,0Fh,0Fh,0Fh,0Fh,0Fh,0Fh,0Fh,07h,05h,00h,00h,00h,00h,00h,00h     ;  5
        DB 00h,00h,00h,00h,00h,00h,00h,08h,0Fh,0Fh,0Fh,0Fh,0Fh,0Fh,0Fh,0Fh     ;  6
        DB 0Fh,0Fh,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,07h     ;  7
        DB 0Fh,0Fh,0Fh,0Fh,0Fh,0Fh,0Fh,0Fh,0Fh,0Fh,08h,00h,00h,00h,00h,00h     ;  8
        DB 00h,00h,00h,00h,00h,00h,01h,07h,0Fh,0Fh,0Fh,0Fh,0Fh,0Fh,0Fh,0Fh     ;  9
        DB 0Fh,0Fh,07h,01h,00h,00h,00h,00h,00h,00h,00h,00h,01h,03h,09h,07h     ; 10
        DB 0Fh,0Fh,0Fh,0Fh,0Fh,0Fh,0Fh,0Fh,0Fh,0Fh,08h,09h,03h,01h,00h,00h     ; 11
        DB 00h,00h,00h,03h,09h,09h,09h,09h,07h,0Fh,0Fh,0Fh,0Fh,0Fh,0Fh,0Fh     ; 12
        DB 0Fh,08h,09h,09h,09h,09h,03h,00h,00h,00h,00h,09h,09h,09h,09h,09h     ; 13
        DB 09h,08h,07h,07h,07h,07h,07h,08h,03h,09h,09h,09h,09h,09h,09h,01h     ; 14
        DB 00h,00h,00h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h     ; 15
        DB 09h,09h,09h,09h,09h,09h,09h,01h,00h,00h,00h,03h,09h,09h,09h,09h     ; 16
        DB 09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,03h,00h     ; 17
        DB 00h,00h,00h,00h,03h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h     ; 18
        DB 09h,09h,09h,09h,09h,03h,00h,00h,00h,00h,00h,00h,00h,00h,01h,03h     ; 19
        DB 09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,03h,01h,00h,00h,00h,00h     ; 20
        DB 00h,00h,00h,00h,00h,00h,00h,00h,00h,01h,01h,01h,01h,01h,01h,01h     ; 21
        DB 01h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h     ; 22
        DB 00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h     ; 23

        strNamePlayer db 50 dup(0)
        image2  DB 00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h     ;  0
        DB 00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,02h,03h     ;  1
        DB 03h,03h,03h,03h,03h,03h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h     ;  2
        DB 00h,00h,00h,00h,00h,03h,03h,03h,03h,03h,03h,03h,03h,03h,03h,02h     ;  3
        DB 00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,02h,03h,03h,03h,03h     ;  4
        DB 03h,03h,03h,03h,0Bh,07h,07h,07h,03h,00h,00h,00h,00h,00h,00h,00h     ;  5
        DB 00h,00h,00h,03h,03h,03h,03h,03h,03h,03h,03h,03h,07h,07h,07h,07h     ;  6
        DB 03h,00h,00h,00h,00h,00h,00h,00h,00h,00h,03h,03h,03h,03h,03h,03h     ;  7
        DB 03h,03h,03h,03h,07h,07h,07h,07h,03h,03h,00h,00h,00h,00h,00h,00h     ;  8
        DB 00h,00h,03h,03h,03h,03h,03h,03h,03h,03h,03h,03h,03h,07h,07h,03h     ;  9
        DB 03h,03h,00h,00h,00h,00h,00h,00h,00h,03h,03h,03h,03h,03h,03h,03h     ; 10
        DB 03h,03h,03h,03h,03h,03h,03h,03h,03h,03h,03h,00h,00h,00h,00h,00h     ; 11
        DB 00h,03h,03h,03h,03h,03h,03h,03h,03h,03h,03h,03h,03h,03h,03h,03h     ; 12
        DB 03h,03h,03h,00h,00h,00h,00h,00h,00h,03h,03h,03h,03h,03h,03h,03h     ; 13
        DB 03h,03h,03h,03h,03h,03h,03h,03h,03h,03h,03h,00h,00h,00h,00h,00h     ; 14
        DB 00h,03h,03h,03h,03h,03h,03h,03h,03h,03h,03h,03h,03h,03h,03h,03h     ; 15
        DB 03h,03h,03h,00h,00h,00h,00h,00h,00h,02h,03h,00h,04h,04h,08h,08h     ; 16
        DB 03h,03h,03h,03h,02h,04h,04h,07h,04h,03h,03h,00h,00h,00h,00h,00h     ; 17
        DB 00h,00h,03h,03h,00h,04h,04h,04h,02h,03h,03h,03h,00h,04h,04h,04h     ; 18
        DB 00h,03h,00h,00h,00h,00h,00h,00h,00h,00h,03h,03h,00h,04h,04h,04h     ; 19
        DB 04h,03h,03h,00h,04h,04h,04h,00h,03h,03h,00h,00h,00h,00h,00h,00h     ; 20
        DB 00h,00h,03h,03h,03h,03h,03h,03h,03h,03h,03h,03h,03h,02h,03h,03h     ; 21
        DB 03h,03h,00h,00h,00h,00h,00h,00h,00h,00h,00h,03h,03h,03h,03h,03h     ; 22
        DB 03h,03h,03h,03h,03h,03h,03h,03h,03h,00h,00h,00h,00h,00h,00h,00h     ; 23
        DB 00h,00h,00h,03h,03h,03h,03h,03h,03h,03h,03h,03h,03h,03h,03h,03h     ; 24
        DB 03h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,03h,03h,03h,03h     ; 25
        DB 03h,03h,03h,03h,03h,03h,03h,03h,00h,00h,00h,00h,00h,00h,00h,00h     ; 26
        DB 00h,00h,00h,00h,00h,03h,03h,03h,03h,03h,03h,03h,03h,03h,03h,00h     ; 27
        DB 00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,03h,03h     ; 28
        DB 03h,03h,03h,03h,03h,03h,02h,00h,00h,00h,00h,00h,00h,00h,00h,00h     ; 29
        DB 00h,00h,00h,00h,00h,00h,00h,03h,03h,03h,03h,03h,03h,02h,00h,00h     ; 30
        DB 00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h     ; 31
        DB 03h,03h,03h,03h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h     ; 32
        DB 00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h     ; 33
        DB 00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h     ; 34
        DB 00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h     ; 35

		bara                 DB 00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h     ;  0
        DB 00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h     ;  1
        DB 00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h     ;  2
        DB 00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,04h,00h,00h,00h     ;  3
        DB 00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h     ;  4
        DB 00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h     ;  5
        DB 00h,00h,00h,06h,08h,04h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h     ;  6
        DB 00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h     ;  7
        DB 00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,04h,06h,04h,08h,08h,08h     ;  8
        DB 08h,04h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h     ;  9
        DB 00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,04h     ; 10
        DB 06h,08h,08h,04h,08h,08h,07h,08h,06h,04h,00h,00h,00h,00h,00h,00h     ; 11
        DB 00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h     ; 12
        DB 00h,00h,00h,00h,00h,00h,06h,08h,08h,08h,08h,00h,08h,08h,08h,06h     ; 13
        DB 08h,04h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h     ; 14
        DB 00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,08h,08h     ; 15
        DB 08h,00h,00h,00h,08h,06h,00h,00h,08h,08h,04h,00h,00h,00h,00h,00h     ; 16
        DB 00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h     ; 17
        DB 00h,00h,00h,00h,00h,00h,08h,00h,00h,08h,03h,00h,08h,08h,00h,00h     ; 18
        DB 00h,08h,08h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h     ; 19
        DB 00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,08h,04h,00h     ; 20
        DB 00h,00h,00h,01h,00h,00h,00h,00h,00h,04h,08h,00h,00h,00h,00h,00h     ; 21
        DB 00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h     ; 22
        DB 00h,00h,06h,06h,08h,00h,00h,00h,08h,00h,01h,01h,00h,00h,00h,00h     ; 23
        DB 00h,00h,08h,04h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h     ; 24
        DB 00h,00h,00h,00h,00h,00h,00h,04h,08h,08h,08h,08h,00h,00h,06h,08h     ; 25
        DB 06h,04h,00h,00h,00h,00h,00h,06h,04h,00h,00h,06h,08h,06h,00h,00h     ; 26
        DB 00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,06h,08h     ; 27
        DB 00h,00h,00h,00h,04h,08h,04h,00h,04h,06h,00h,00h,00h,00h,06h,04h     ; 28
        DB 06h,06h,00h,00h,00h,06h,08h,08h,04h,00h,00h,00h,00h,00h,00h,00h     ; 29
        DB 00h,00h,00h,00h,00h,04h,08h,03h,00h,08h,08h,08h,06h,00h,00h,00h     ; 30
        DB 06h,04h,00h,00h,00h,00h,06h,00h,00h,04h,08h,06h,04h,00h,00h,00h     ; 31
        DB 08h,08h,06h,00h,00h,00h,00h,00h,00h,00h,00h,04h,08h,08h,00h,00h     ; 32
        DB 00h,08h,00h,00h,00h,00h,00h,00h,08h,00h,00h,00h,00h,00h,04h,04h     ; 33
        DB 00h,00h,00h,04h,06h,06h,08h,00h,00h,01h,04h,08h,04h,00h,00h,00h     ; 34
        DB 00h,00h,00h,08h,08h,08h,06h,08h,08h,08h,00h,00h,00h,00h,00h,08h     ; 35
        DB 08h,00h,08h,00h,00h,00h,00h,08h,04h,00h,00h,00h,00h,00h,00h,08h     ; 36
        DB 08h,06h,08h,08h,08h,04h,00h,00h,00h,00h,00h,08h,08h,08h,08h,04h     ; 37
        DB 08h,08h,00h,00h,00h,00h,04h,08h,00h,00h,00h,03h,01h,00h,00h,00h     ; 38
        DB 08h,08h,00h,00h,00h,00h,00h,04h,08h,08h,08h,06h,08h,04h,00h,00h     ; 39
        DB 00h,00h,00h,06h,06h,08h,08h,00h,08h,08h,00h,00h,00h,00h,06h,08h     ; 40
        DB 08h,00h,00h,00h,00h,00h,00h,00h,00h,04h,08h,00h,00h,00h,00h,00h     ; 41
        DB 04h,08h,08h,06h,08h,04h,00h,00h,00h,00h,00h,00h,08h,08h,08h,00h     ; 42
        DB 08h,04h,00h,00h,00h,00h,08h,08h,08h,00h,00h,00h,00h,00h,00h,01h     ; 43
        DB 00h,00h,06h,06h,00h,00h,00h,00h,00h,00h,08h,08h,06h,00h,00h,00h     ; 44
        DB 00h,00h,00h,00h,04h,08h,06h,00h,00h,00h,00h,00h,00h,08h,08h,08h     ; 45
        DB 00h,00h,04h,00h,00h,06h,08h,00h,00h,00h,00h,08h,04h,00h,00h,00h     ; 46
        DB 00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h     ; 47
        DB 00h,00h,00h,00h,00h,08h,01h,00h,00h,08h,08h,06h,00h,08h,04h,08h     ; 48
        DB 04h,00h,00h,06h,04h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h     ; 49
        DB 00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,06h,08h,00h,00h     ; 50
        DB 06h,06h,04h,08h,04h,06h,00h,04h,04h,00h,00h,08h,00h,00h,00h,00h     ; 51
        DB 00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h     ; 52
        DB 00h,00h,00h,00h,08h,08h,00h,04h,08h,00h,00h,06h,08h,04h,00h,08h     ; 53
        DB 00h,00h,04h,06h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h     ; 54
        DB 00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,04h,06h,08h,00h,08h     ; 55
        DB 00h,00h,00h,08h,08h,00h,00h,08h,00h,00h,08h,00h,00h,00h,00h,00h     ; 56
        DB 00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h     ; 57
        DB 00h,00h,00h,06h,00h,00h,00h,06h,00h,00h,00h,04h,04h,00h,00h,08h     ; 58
        DB 00h,00h,08h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h     ; 59
        DB 00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,08h,00h,00h,04h,04h     ; 60
        DB 00h,00h,00h,00h,00h,00h,00h,08h,00h,04h,06h,00h,00h,00h,00h,00h     ; 61
        DB 00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h     ; 62
        DB 00h,00h,00h,06h,00h,00h,08h,00h,00h,00h,00h,00h,00h,00h,00h,08h     ; 63
        DB 00h,04h,04h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h     ; 64
        DB 00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,04h,06h,00h,06h,06h,00h     ; 65
        DB 00h,00h,00h,00h,00h,00h,00h,06h,00h,04h,08h,00h,00h,00h,00h,00h     ; 66
        DB 00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h     ; 67
        DB 00h,00h,06h,00h,00h,08h,00h,00h,00h,00h,00h,00h,00h,00h,00h,06h     ; 68
        DB 00h,00h,04h,08h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h     ; 69
        DB 00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,08h,00h,06h,04h,00h,00h     ; 70
        DB 00h,00h,00h,00h,00h,00h,00h,08h,04h,00h,08h,08h,08h,04h,00h,00h     ; 71
        DB 00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h     ; 72
        DB 00h,00h,08h,08h,08h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,04h     ; 73
        DB 04h,08h,04h,04h,04h,08h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h     ; 74
        DB 00h,00h,00h,00h,00h,00h,00h,00h,00h,06h,08h,00h,08h,00h,00h,00h     ; 75
        DB 00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,04h,06h,04h,00h,00h,00h     ; 76
        DB 00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h     ; 77
        DB 00h,08h,03h,04h,08h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h     ; 78
        DB 00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h     ; 79
        DB 00h,00h,00h,00h,00h,00h,00h,00h,06h,04h,00h,08h,04h,00h,00h,00h     ; 80
        DB 00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h     ; 81
        DB 00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h     ; 82
        DB 06h,06h,08h,06h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h     ; 83
        DB 00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h     ; 84
        DB 00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h     ; 85
        DB 00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h     ; 86
        DB 00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h     ; 87
        DB 00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h     ; 88
        DB 00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h     ; 89
        DB 00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h     ; 90
        DB 00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h     ; 91
        DB 00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h     ; 92
        DB 00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h     ; 93
        DB 00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h     ; 94
        DB 00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h     ; 95
        DB 00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h     ; 96
        DB 00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h     ; 97
        DB 00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h     ; 98
        DB 00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h     ; 99

         
		main_pic_x dw 40h
		main_pic_y dw 40h
		
		 bara_x dw 4bh
		 bara_y dw 94h
		 big_monster_2_right_bool db 0
		 big_monster_right_bool db 0 

        
        ;spaceship cordinates
		;first line 
		banagaya_x dw 4bh
		banagaya_y dw 32h
		
		banagaya1_x dw 7dh
		banagaya1_y dw 32h
		
		banagaya2_x dw 0afh
		banagaya2_y dw 32h
		
		banagaya3_x dw 0e1h
		banagaya3_y dw 32h
		
		;second line 
		banagaya4_x dw 4bh
		banagaya4_y dw 64h
		
		image3_x dw 7dh
		image3_y dw 64h
		
		banagaya6_x dw 0afh
		banagaya6_y dw 64h
		
		image2_x dw 0e1h
		image2_y dw 64h
		
		level_2_end_text db 'Press 3 to start Level 3','$'
		
.code

main proc
mov ax,@data
mov ds,ax 


	
	
	call video_mode
	call clear_screen 
	;call draw_square 
	;call draw_pixel

	check_time:
	
		cmp exiting_game,01h
		je start_exit_process
		
		cmp current_screen,00h
		je show_main_menu
		
		cmp level_2,01h
		je level_2_caller
		
		cmp level_1,00h
		je level_1_end 
		
		;cmp level_3,01h
		;je activate_level_3
		

		;cmp level_2,01h
		;je level_2_start
		
	    mov ah,2ch   ;timing thing
		int 21h
		cmp dl,time
		je check_time
		mov time,dl
		
		call video_mode
		call clear_screen
		
        
		;call draw_pixel
		;call draw_square
	    ;call draw_square
		;call move_ball
		call draw_ball 
		
		;call key_checker
		call shoot
		;call move_ball
		call draw_ball
    	call draw_paddel
		call draw_enemy
		;call move_enemy
        call move_paddle
		
		;call draw_big_monster_2
		;call move_big_monster_2
		call draw_ui
		call check_collision
		call paddle_monster_collision
        ;call draw_final_screen

        jmp check_time 
		
		level_1_end:
			call draw_level_1_end
			jmp check_time
			
			
		show_main_menu:
			call draw_main_menu
			jmp check_time
			
		start_exit_process:
			call conclude_game 
			
		level_2_caller:
			call draw_level_2
			jmp check_time
			
		;activate_level_3:
			;call draw_level_3_end
			;jmp check_time
		
		ret
			
    ;call clock

mov ah, 4ch
int 21h
main endp



draw_ui proc
	mov ah,02h
	mov bh,00h
	mov dh,04h
	mov dl,06h
	int 10h 
	
	mov ah,09h
	lea dx,text
	int 21h
	
	
	ret
draw_ui endp





update_text_player_one_points proc
	sub ax,ax
	mov al,player_one_points
	add al,30h
	
	mov [text],al
	
	

	ret
update_text_player_one_points endp


draw_level_3_end proc


	ret
draw_level_3_end endp






draw_level_1_end proc

	call video_mode
	call clear_screen
	;call draw_paddel
	
	;level passed text
	mov ah,02h
	mov bh,00h
	mov dh,02h
	mov dl,06h
	int 10h 
	
	mov ah,09h
	lea dx,level_1_end_text
	int 21h
	
	;press r key text
	mov ah,02h
	mov bh,00h
	mov dh,06h
	mov dl,06h
	int 10h 
	
	mov ah,09h
	lea dx,level_1_end_text_2
	int 21h
	
	;press e for the main menu text 
	mov ah,02h
	mov bh,00h
	mov dh,0Ah
	mov dl,06h
	int 10h 
	
	mov ah,09h
	lea dx,text_main_menu
	int 21h
	
	;press 2 key text
	mov ah,02h
	mov bh,00h
	mov dh,0eh
	mov dl,06h
	int 10h
	
	mov ah,09h
	lea dx,level_1_end_text_3
	int 21h
	
	
	;wait for the key press
	mov ah,00h
	int 16h
	
	cmp al,70h
	je level_1_status
	cmp al,50h
	je level_1_status
	;checking for the e key press to jump to menu 
	cmp al,'E'
	je exit_to_main_menu
	cmp al,'e'
	je exit_to_main_menu
	
	;checking for the 2 key press to jump to the level 2
	cmp al,32h
	je level_2_activator
	
	
	level_1_status:
		mov level_1,01h
		ret
		
	exit_to_main_menu:
		mov level_1,00h
		mov current_screen,00h
		ret
			
	level_2_activator:
		mov level_1,00h
		mov current_screen,01h
		mov level_2,01h
		ret
	
		
		
draw_level_1_end endp


draw_level_2 proc 

	check_time2:
	mov ah,2ch   ;timing thing
		int 21h
		cmp dl,time
		je check_time2
		mov time,dl
	
	call video_mode
	call clear_screen
	
	;level 2title
	mov ah,02h
	mov bh,00h
	mov dh,01h
	mov dl,0fh
	int 10h 
	
	mov ah,09h
	lea dx,level_2_title
	int 21h
	
	
	call draw_big_monster
	;call move_ball
	;call draw_ball
    call draw_paddel
    call draw_enemy
	call move_paddle
	;call move_enemy
	call draw_ui
	call draw_big_monster
	call move_big_monster
	;call throw_bomb
	call draw_ball2
	call draw_ball
	call shoot2
	call shoot
	call draw_big_monster_2
	
	call move_big_monster_2
	
	jmp check_time2
	;waiting for the key press
	mov ah,00h
	int 16h
	
	cmp al,'n'
	je l3
	
	
	l3:
		mov level_3,01h
		mov level_2,0h
		mov level_1,00h
		mov current_screen,01h
		call draw_big_monster_2
		
	ret
draw_level_2 endp


;procedure for the main menu 
draw_main_menu proc


	mov ah,09
    lea dx,String_Data11
    int 21h
    mov ah,3fh
    mov dx,offset strNamePlayer
    int 21h
	
	call clear_screen
	call video_mode
	
	;for main  menu title 
	mov ah,02h
	mov bh,00h
	mov dh,04h
	mov dl,0fh
	int 10h 
	
	mov ah,09h
	lea dx,text_main_menu_title
	int 21h
	
	;for play game option 
	mov ah,02h
	mov bh,00h
	mov dh,08h
	mov dl,04h
	int 10h 
	
	mov ah,09h
	lea dx,text_main_menu_startthegame
	int 21h
    
	;for the exit option 
	mov ah,02h
	mov bh,00h
	mov dh,0ah
	mov dl,04h
	int 10h 
	
	mov ah,09h
	lea dx,text_main_menu_quit
	int 21h
	
	;level 2 selection 
	mov ah,02h
	mov bh,00h
	mov dh,0eh
	mov dl,04h
	int 10h 
	
	mov ah,09h
	lea dx,text_main_menu_title2
	int 21h
	
	

	
	main_menu_wait_for_keys:
	;wait for the key press
		mov ah,00h
		int 16h
		
		;check which key is pressed
		
		;checking keys to start the game 
		cmp al,'s'
		je start_level_1
		cmp al,'S'
		je start_level_1
		
		;checking keys to exit the game 
		cmp al,'q'
		je exit_game
		cmp al,'Q'
		je exit_game
		
		;checking keys to start level 2
        cmp al,'t'
		je level_2_call
		cmp al,'T'
		je level_2_call	
	
	jmp main_menu_wait_for_keys
	
	start_level_1:
		mov current_screen,01h
		mov level_1,01h
		ret
	level_2_call:
	    mov level_2,1h
	    mov current_screen,01h
		mov level_1,0h
		ret 
	
	exit_game:
		mov exiting_game,01h
		ret
	
	
draw_main_menu endp

;level 3 game 
draw_level_3 proc
	
	check_time3:
	mov ah,2ch   ;timing thing
		int 21h
		cmp dl,time
		je check_time3
		mov time,dl
	
	call video_mode
	call clear_screen
	
	;level 3 title
	mov ah,02h
	mov bh,00h
	mov dh,01h
	mov dl,0fh
	int 10h 
	
	mov ah,09h
	lea dx,level_3_title
	int 21h
	
	
	call draw_big_monster
	;call move_ball
	;call draw_ball
    call draw_paddel
    call draw_enemy
	call move_paddle
	;call move_enemy
	call draw_ui
	;call draw_big_monster
	call move_big_monster
	call throw_bomb
	call draw_big_monster_2
	call move_big_monster_2
	
	jmp check_time3
	
	;waiting for the key press
	mov ah,00h
	int 16h
	
	
	


	ret
draw_level_3 endp


conclude_game proc
	mov ah,00h
	mov al,00h
	int 10h


	ret
conclude_game endp


draw_enemy proc

		;drawing spaceship
		mov si,0
		mov counter1,0
		mov counter2,0
		mov cx,banagaya_x
		mov dx,banagaya_y
		drawouter1:
			drawinner2:
			mov ah,0ch
			mov al,banagaya[si]
			int 10h
			inc cx
			inc counter2
			inc si
			cmp counter2,24
			jl drawinner2
		;outer loop
		mov counter2,0
		mov cx,banagaya_x
		inc dx
		inc counter1
		cmp counter1,16
		jl drawouter1
		
		;drawing spaceship2
		mov si,0
		mov counter1,0
		mov counter2,0
		mov cx,banagaya1_x
		mov dx,banagaya1_y
		drawouter3:
			drawinner4:
			mov ah,0ch
			mov al,banagaya[si]
			int 10h
			inc cx
			inc counter2
			inc si
			cmp counter2,24
			jl drawinner4
		;outer loop
		mov counter2,0
		mov cx,banagaya1_x
		inc dx
		inc counter1
		cmp counter1,16
		jl drawouter3
		
		;spaceship 3
		mov si,0
		mov counter1,0
		mov counter2,0
		mov cx,banagaya2_x
		mov dx,banagaya2_y
		drawouter5:
			drawinner6:
			mov ah,0ch
			mov al,banagaya[si]
			int 10h
			inc cx
			inc counter2
			inc si
			cmp counter2,24
			jl drawinner6
		;outer loop
		mov counter2,0
		mov cx,banagaya2_x
		inc dx
		inc counter1
		cmp counter1,16
		jl drawouter5
		
		;spaceship 4
		mov si,0
		mov counter1,0
		mov counter2,0
		mov cx,banagaya3_x
		mov dx,banagaya3_y
		drawouter7:
			drawinner8:
			mov ah,0ch
			mov al,banagaya[si]
			int 10h
			inc cx
			inc counter2
			inc si
			cmp counter2,24
			jl drawinner8
		;outer loop
		mov counter2,0
		mov cx,banagaya3_x
		inc dx
		inc counter1
		cmp counter1,16
		jl drawouter7
		
		;spaceship5
		mov si,0
		mov counter1,0
		mov counter2,0
		mov cx,banagaya4_x
		mov dx,banagaya4_y
		drawouter9:
			drawinner10:
			mov ah,0ch
			mov al,banagaya[si]
			int 10h
			inc cx
			inc counter2
			inc si
			cmp counter2,24
			jl drawinner10
		;outer loop
		mov counter2,0
		mov cx,banagaya4_x
		inc dx
		inc counter1
		cmp counter1,16
		jl drawouter9
		
		
		;spaceship6
		mov si,0
		mov counter1,0
		mov counter2,0
		mov cx,image3_x
		mov dx,image3_y
		drawouter11:
			drawinner12:
			mov ah,0ch
			mov al,image2[si]
			int 10h
			inc cx
			inc counter2
			inc si
			cmp counter2,24
			jl drawinner12
		;outer loop
		mov counter2,0
		mov cx,image3_x
		inc dx
		inc counter1
		cmp counter1,16
		jl drawouter11
		
		;spaceship7
		
		mov si,0
		mov counter1,0
		mov counter2,0
		mov cx,banagaya6_x
		mov dx,banagaya6_y
		drawouter13:
			drawinner14:
			mov ah,0ch
			mov al,banagaya[si]
			int 10h
			inc cx
			inc counter2
			inc si
			cmp counter2,24
			jl drawinner14
		;outer loop
		mov counter2,0
		mov cx,banagaya6_x
		inc dx
		inc counter1
		cmp counter1,16
		jl drawouter13
		
		;spaceship8
		mov si,0
		mov counter1,0
		mov counter2,0
		mov cx,image2_x
		mov dx,image2_y
		drawouter15:
			drawinner16:
			mov ah,0ch
			mov al,image2[si]
			int 10h
			inc cx
			inc counter2
			inc si
			cmp counter2,24
			jl drawinner16
		;outer loop
		mov counter2,0
		mov cx,image2_x
		inc dx
		inc counter1
		cmp counter1,16
		jl drawouter15
		
		
		


	ret
draw_enemy endp 

paddle_monster_collision proc

mov ax,bara_x
add bara_x,3


mov bx,bara_x
sub bara_x,3

.if paddle_left_x >= bx
		.if paddle_left_x <= ax
			.if bara_y >= 4bh 
			    .if bara_y<=4fh
				jmp update
				.endif
			.endif
		.endif
	.endif
	jmp skip2
		
	update:
		add player_one_points,01h
		;draw_square
		
		
		call update_text_player_one_points
		ret
		
	
	skip2:
		ret

ret
paddle_monster_collision endp






video_mode proc
	mov ah,00h ;configuration for video mode
	mov al,13h ;setting the video mode
	int 10h
ret
video_mode endp

clear_screen proc
	mov ah,0Bh ;configuration
	mov bh,00h ;background color setting
	mov bl,00h ;setting color
	int 10h
ret
clear_screen endp

draw_square proc
	mov ah,06h ;interrupt 
	mov al,75  ;lines to be scrolled
	mov bh,0011000b ;color 
	mov ch,0h ;top row
	mov cl,0h;top column 
	mov dh,0 ;bottom row
	mov dl,0 ;bottom right most column 
	int 10h
ret
draw_square endp


draw_pixel proc
	mov ah,0Ch
	mov al,0fh ; color
	mov bh,00h ;page number
	mov cx,136h ;set x
	mov dx,0beh ;set y
	int 10h 
ret
draw_pixel endp

draw_ball proc 
	mov cx,ball_x ;set x
	mov dx,ball_y ;set y
	
	draw_ball_horizontal:
		mov ah,0Ch
		mov al,0fh ; color
		mov bh,00h ;page number
		int 10h
		inc cx
		mov ax,cx
		sub ax,ball_x
		cmp ax,ball_size
		jng draw_ball_horizontal

		mov cx,ball_x
		inc dx ;moving to next line 

		mov ax,dx
		sub ax,ball_y
		cmp ax,ball_size
		jng draw_ball_horizontal 
ret
draw_ball endp

draw_ball2 proc 
	mov cx,ball2_x ;set x
	mov dx,ball2_y ;set y
	
	draw2_ball_horizontal:
		mov ah,0Ch
		mov al,04h ; color
		mov bh,00h ;page number
		int 10h
		inc cx
		mov ax,cx
		sub ax,ball2_x
		cmp ax,ball2_size
		jng draw2_ball_horizontal

		mov cx,ball2_x
		inc dx ;moving to next line 

		mov ax,dx
		sub ax,ball2_y
		cmp ax,ball2_size
		jng draw2_ball_horizontal 
ret
draw_ball2 endp


clock proc
    check_time:
		mov ah,2ch
		int 21h 
		cmp dl,time
	je check_time
	mov time,dl

	call video_mode
	call clear_screen
	call draw_ball
	call move_ball
	call shoot
	
	jmp check_time
ret
clock endp

shoot proc

	
	

	;checking for up and down movement	

	    ;end_screen:
		cmp ball_y,0h
		je ending
			mov ax,ball_velocity_y
			sub ball_y,ax
			ret
			;;call draw_ball
        ;jmp end_screen

		ending:
		    mov ax,ball_velocity_y
			sub ball_y,ax
			
		    mov ax,paddle_left_x
			mov ball_x,ax
			
			mov ax,paddle_left_y
			mov ball_y,ax
			call draw_ball
			
			ret

	
shoot endp

shoot2 proc


	;checking for up and down movement	

	    ;end_screen:
		cmp ball2_y,0c8h
		je ending2
			mov ax,ball_velocity_y
			add ball2_y,ax
			ret
			;;call draw_ball
        ;jmp end_screen

		ending2:
		    mov ax,ball_velocity_y
			add ball2_y,ax
			
		    mov ax,bana_x
			mov ball_x,ax
			
			mov ax,bana_y
			mov ball_y,ax
			call draw_ball2
			
			ret

		;ret
	
shoot2 endp

move_ball proc
	;level 1 text		
			mov ah,02h
			mov bh,00h
			mov dh,01h
			mov dl,0fh
			int 10h 
			
			mov ah,09h
			lea dx,level_1_text
			int 21h
	;mov ax,ball_velocity_x
	;add ball_x,ax           ;move the ball horizontally


    ;checking keys for the movement of the ball 
	;wait for the key press
		;mov ah,00h
		;int 16h
		
		;check which key is pressed
		
		;checking keys to start the game 
		;cmp al,20h
		;je shoot

	
	;mov ax,window_bounds
	;cmp ball_x,ax
	;jl reset_pos
	
	
	

	;mov ax,window_w
	;sub ax,ball_size
	;sub ax,window_bounds
	;cmp ball_x,ax
	;jg reset_pos
		movement_end:
			cmp ball_y,00h
			je end_move
        movement_start2:			
			mov ax,ball_velocity_y
			sub ball_y,ax           ;move the ball vertically
			mov ax,paddle_left_x
			mov ball_x,ax

        end_move:
			ret
		;mov ax,window_bounds
		;cmp ball_y,ax
		;jl neg_velocity_y
		mov ax,0
		mov ax,paddle_left_y
		cmp ball_y,ax
		je further
		jmp exit
		
		
		further:
		mov ax,0
		mov ax,paddle_left_x
		cmp ball_x,ax
		je neg_velocity_y
	
	;mov ax,pad_up
	;sub ax,ball_size
	;sub ax,window_bounds
	;cmp ball_y,ax
	;jg further
	
	

	;mov ax,window_h
	;sub ax,ball_size
	;sub ax,window_bounds
	;cmp ball_y,ax
	;jg neg_velocity_y 
	
	;checking if the ball is colliding with the left paddle.
	
	;mov ax,ball_x
	;add ax,ball_size
	;cmp ax,paddle_left_x
	;jng exit

	;mov ax,paddle_left_x
	;add ax,paddle_w
	;cmp ball_x,ax
	;jnl exit
	
	;mov ax,ball_y
	;add ax,ball_size
	;cmp ax,paddle_left_y
	;jng exit
	
	;mov ax,paddle_left_y
	;add ax,paddle_h
	;cmp ball_y,ax
	;jnl exit
	
	
	
	;NEG ball_velocity_x
	;ret
	
	exit:
		ret
	

	reset_pos:
		call reset_ball
		ret

	neg_velocity_y:
	    ;inc score
		inc player_one_points
		NEG ball_velocity_y
		call update_text_player_one_points
		cmp player_one_points,1h
		jge gameover
		ret

	gameover:
		mov player_one_points,00h
		call update_text_player_one_points
		mov level_1,00h
		ret

	
move_ball endp

reset_ball proc
	mov ax,ball_origional_x
	mov ball_x,ax
	
	mov ax,ball_origional_y
	mov ball_y,ax
	
	ret


reset_ball endp

check_collision_shooter proc
	
	mov ax,paddle_left_x
	add ax,5
	
	mov bx,paddle_left_x
	sub ax,5
	
	cmp bara_x,ax
	jge move
	
	move: 
	cmp bara_x,bx
	je move2
	
	move2:
		
	
	
	



	ret
check_collision_shooter endp



check_collision proc 
	

	
	mov ax,ball_x
	add ax,5
	
	mov bx,ball_x
	sub bx,5
	
	
	;-------- Check collision with first enemy --------;
	.if banagaya4_x >= bx
		.if banagaya4_x <= ax
			.if ball_y <= 4bh 
				jmp update
			.endif
		.endif
	.endif
	jmp skip2
		
	update:
		add player_one_points,01h
		call update_text_player_one_points
		
		jmp skip2
		
		
		ret
		
	
	skip2:
		ret
		
check_collision endp


draw_paddel proc
    
	;making the center part 
	mov cx,paddle_left_x ;set x
	mov dx,paddle_left_y ;set y
	
	draw_paddel_left_horizontal:
		mov ah,0Ch
		mov al,07h ; color
		mov bh,00h ;page number
		int 10h
		inc cx
		mov ax,cx
		sub ax,paddle_left_x
		cmp ax,paddle_w
		jng draw_paddel_left_horizontal

		mov cx,paddle_left_x
		inc dx ;moving to next line 

		mov ax,dx
		sub ax,paddle_left_y
		cmp ax,paddle_h
		jng draw_paddel_left_horizontal
		
	;making the left part
	mov cx,paddle2_left_x ;set x
	mov dx,paddle2_left_y ;set y
		
	draw_paddel2_left_horizontal:
		mov ah,0Ch
		mov al,09h ; color
		mov bh,00h ;page number
		int 10h
		inc cx
		mov ax,cx
		sub ax,paddle2_left_x
		cmp ax,paddle2_w
		jng draw_paddel2_left_horizontal

		mov cx,paddle2_left_x
		inc dx ;moving to next line 

		mov ax,dx
		sub ax,paddle2_left_y
		cmp ax,paddle2_h
		jng draw_paddel2_left_horizontal
		
	;making right part 
	mov cx,paddle3_left_x ;set x
	mov dx,paddle3_left_y ;set y
		
	draw_paddel3_left_horizontal:
		mov ah,0Ch
		mov al,09h ; color
		mov bh,00h ;page number
		int 10h
		inc cx
		mov ax,cx
		sub ax,paddle3_left_x
		cmp ax,paddle3_w
		jng draw_paddel3_left_horizontal

		mov cx,paddle3_left_x
		inc dx ;moving to next line 

		mov ax,dx
		sub ax,paddle3_left_y
		cmp ax,paddle3_h
		jng draw_paddel3_left_horizontal
		
	;paddel right 
	mov cx,paddle_right_x ;set x
	mov dx,paddle_right_y ;set y
		
	draw_paddel_right_horizontal:
		mov ah,0Ch
		mov al,05h ; color
		mov bh,00h ;page number
		int 10h
		inc cx
		mov ax,cx
		sub ax,paddle_right_x
		cmp ax,paddler_w
		jng draw_paddel_right_horizontal

		mov cx,paddle_right_x
		inc dx ;moving to next line 

		mov ax,dx
		sub ax,paddle_right_y
		cmp ax,paddler_h
		jng draw_paddel_right_horizontal
	
	
	ret
draw_paddel endp


draw_big_monster proc 
; used for level 2
		;drawing big monster
		mov si,0
		mov counter1,0
		mov counter2,0
		mov cx,bana_x
		mov dx,bana_y
		drawouter:
			drawinner:
			mov ah,0ch
			mov al,bana[si]
			int 10h
			inc cx
			inc counter2
			inc si
			cmp counter2,40
			jl drawinner
		;outer loop
		mov counter2,0
		mov cx,bana_x
		inc dx
		inc counter1
		cmp counter1,50
		jl drawouter

	ret
draw_big_monster endp


move_big_monster proc 

	cmp big_monster_right_bool,1
	je rightmove_m

	Left1MoveIRON:
	cmp bana_x,0
	jg l1
	mov big_monster_right_bool,1
	jmp rightmove_m
	l1:
	sub bana_x,5
	call draw_big_monster
	ret


	RightMove_m:
	cmp bana_x,115h
	jl r1
	mov big_monster_right_bool,0

	r1:
	add bana_x,5
	call draw_big_monster

	Exit1IronMove:
	ret
	

move_big_monster endp


throw_bomb proc
	mov ax,ball_velocity_y2
	sub ball_y,ax
	
	
	call draw_ball
		
		
		
	



	ret
throw_bomb endp





draw_big_monster_2 proc
  ;braa sp 9
		mov si,0
		mov counter1,0
		mov counter2,0
		mov cx,bara_x
		mov dx,bara_y
		drawouter17:
			drawinner18:
			mov ah,0ch
			mov al,bara[si]
			int 10h
			inc cx
			inc counter2
			inc si
			cmp counter2,40
			jl drawinner18
		;outer loop
		mov counter2,0
		mov cx,bara_x
		inc dx
		inc counter1
		cmp counter1,35
		jl drawouter17


	ret
draw_big_monster_2 endp




move_big_monster_2 proc
    cmp big_monster_2_right_bool,1
	je rightmove_m2

	LeftMoveIRON:
	cmp bara_x,0
	jg l1
	mov big_monster_2_right_bool,1
	jmp rightmove_m2
	l1:
	sub bara_x,5
	call draw_big_monster_2
	ret


	RightMove_m2:
	cmp bara_x,115h
	jl r1
	mov big_monster_2_right_bool,0

	r1:
	add bara_x,5
	call draw_big_monster_2

	ExitIronMove:
	ret



	ret
move_big_monster_2 endp




move_paddle proc 
     
	mov ah,01h
	int 16h
	jz check_right_paddel_movement
	;setting up the keyboard input mode
	mov ah,00h
	int 16h
	
	;checking for a key to move left 
	cmp al,41h
	je move_left
	
	cmp al,61h
	je move_left
	
	;checking for the right key 
	cmp al,44h
	je move_right
	
	cmp al,64h 
	je move_right 
	
	cmp al,'w'
	je up
	cmp al,'W'
	Je up 
	
	cmp al,'s'
	je  down
	cmp al,'S'
	je down
	
	
	
	
	;checking for up and down movement
	
	
	move_left:
	    mov ax,0
		mov ax,paddle_velocity
		sub paddle_left_x,ax
		sub paddle2_left_x,ax
		sub paddle3_left_x,ax
		;sub alien1_x,ax
		jmp check_right_paddel_movement
 
		
	move_right:
		mov ax,0
		mov ax,paddle_velocity
		add paddle_left_x,ax
		add paddle2_left_x,ax
		add paddle3_left_x,ax
		;add alien1_x,ax
		jmp check_right_paddel_movement
		
	up:
		mov ax,0
		mov ax,paddle_velocity
		sub paddle_left_y,ax
		sub paddle2_left_y,ax
		sub paddle3_left_y,ax
		;add alien1_x,ax
		jmp check_right_paddel_movement
	
	down:
		mov ax,0
		mov ax,paddle_velocity
		add paddle_left_y,ax
		add paddle2_left_y,ax
		add paddle3_left_y,ax
		;add alien1_x,ax
		jmp check_right_paddel_movement
		
		;call draw_ball
		;call move_ball
	
	jmp check_right_paddel_movement
	
	check_right_paddel_movement:
		
		
		
			
		
		
	exit:
		ret
		
	ret
move_paddle endp 


draw_final_screen proc
	mov ah,02h
	mov bh,00h
	mov dh,01h   ;set row
	mov dl,09h   ;set column 
	int 10h
	
	mov ah,09h
	lea dx,text
	int 21h
	
	
	mov dh,01h   ;set row
	mov dl,0fh   ;set column 
	int 10h
	
	mov ah,09h
	lea dx,text
	int 21h
	
	ret
	
draw_final_screen endp



end main 

