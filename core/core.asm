
POINT STRUCT
	x BYTE ?
	y BYTE ?
POINT ENDS

.data
	block BYTE "[======]",0
	Space BYTE "        ",0
	sizeA = 10
	axis POINT sizeA DUP(<?,?>)
	val1 BYTE 0
	val2 BYTE 0
	color_rand DWORD 2
.code 
include helperPROC.asm
<<<<<<< HEAD
Print_Grid PROC
		mov eax, 0
		mov esi, 0
		mov ecx, 30
=======
eraseBlock PROC
		mov dl, axis[esi].x
		mov dh, axis[esi].y
		call Gotoxy
		mov edx,OFFSET Space
		call writestring
		
	ret
eraseBlock ENDP

core PROC

	mov eax, 0
	mov esi, 0
	mov ecx, 10

>>>>>>> 3f8c5c3d8c152ad7977fa6b23e0684b7fe1412ef
	row1:
		mov al,val1
		mov ah,val2
		
		mov axis[esi].x,ah 
		mov axis[esi].y,al
	
		mov dl, axis[esi].x
		mov dh, axis[esi].y
		call Gotoxy
		
		mov eax,color_rand
		call SetTextColor
				
		mov edx,OFFSET block
		call writestring
		
	.if color_rand>=15
		mov color_rand,3
	.endif
		
	.if val2>=80
		mov val2,0
		add val1,1
	.endif
	
		add val2,8	
		add color_rand,1
		
	loop row1	

ret
Print_Grid ENDP

eraseBlock PROC
		
		mov al,val1
		mov ah,val2
		
		mov axis[esi].x,ah 
		mov axis[esi].y,al
		mov dl, axis[esi].x
		mov dh, axis[esi].y
		call Gotoxy
	
		mov edx,OFFSET Space
		call writestring
<<<<<<< HEAD
		
	ret
eraseBlock ENDP

core PROC

call Print_Grid				
=======
		add val1,8
		add color_rand,1
	loop row3

            mov esi, 0
        call eraseBlock
    
>>>>>>> 3f8c5c3d8c152ad7977fa6b23e0684b7fe1412ef
		call crlf
		call crlf
		call crlf
		call crlf
		call crlf
		call crlf
		call crlf
		call crlf
		call crlf
		call crlf
		call crlf


	ret
core ENDP
