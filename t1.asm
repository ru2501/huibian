assume cs:code
a segment 
	dw	1,2,3,4,5,6,7,8,0AH,0BH,0CH,0DH,0EH,0FH.0FFH
a ends
b segment 
	dw 0,0,0,0,0,0,0,0
b ends
code segment
start:	
		mov ax,b
		mov ss,ax
		mov sp,16
		
		mov ax,a
		mov ds,ax
		mov bx,0
		mov cx,8
set:	push ds:[bx]
		add bx,2
		loop set
	;看看这样可以不
		mov ax,4C00H
		int 21H
code ends
end start