.586
.MODEL FLAT
INCLUDE io.h
.STACK 4096
.DATA
   num1 DWORD ?
   num2 DWORD ?
   num3 DWORD ?
   x BYTE "ENTER   X  " ,0
   v BYTE "ENTER   Y  " ,0
   z BYTE "ENTER   Z  " ,0
   string BYTE 40 DUP (?)
   res BYTE " the result  "  ,0 
   sum DWORD 11 DUP (?) ,0

.CODE
MainProc PROC


input x,string,40
atod  string 
mov num1,eax

input v,string,40
atod  string 
mov num2,eax

input z,string,40
atod  string 
mov num3,eax

mov eax,num2
add eax,num1
imul eax,2
add  eax, num3
dtoa sum,eax
output res,sum






mov eax,0
ret
MainProc ENDP
END
