.586
.MODEL FLAT
INCLUDE io.h
.STACK 4096
.DATA

     num1 DWORD ?
     num2 DWORD ?
     x BYTE "Enter  length   " , 0
     v BYTE "Enter  width    " , 0
     string BYTE 40 DUP (?)
     res BYTE "THE Perimeter " , 0
     sum DWORD 11 DUP (?) ,0

.CODE
MainProc PROC

   input x,string,40
   atod  string
   mov  num1,eax

   input v,string,40
   atod  string
   mov  num2,eax

   add eax,num1
   imul eax,2
   dtoa sum,eax
   output res,sum


mov eax,0
ret
MainProc ENDP
END