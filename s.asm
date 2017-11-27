.586
.MODEL FLAT
INCLUDE io.h
.STACK 4096
.DATA
   n1 DWORD ?
   n2 DWORD ?
   n3 DWORD ?
   n4 DWORD ?
   n5 DWORD ?
   n6 DWORD ?
   p BYTE "Enter Pennies " , 0
   n BYTE "Enter Pennies " , 0
   d BYTE "Enter Pennies " , 0
   q BYTE "Enter Pennies " , 0
   f BYTE "Enter Pennies " , 0
   t BYTE "Enter Pennies " , 0
   string BYTE 40 DUP (?) , 0
   res BYTE"amount by dollar " , 0

   res1 BYTE 11 DUP (?),"  remider =  "
   re BYTE 11 DUP (?), "cent      ",0
   sum BYTE "Sum " ,0
   sum1 BYTE 11 DUP(?),0


.CODE
MainProc PROC
   input p,string,40
   atod  string
   mov n1,eax

   input n,string,40
   atod  string
   mov n2,eax

   input t,string,40
   atod  string
   mov n3,eax

   input q,string,40
   atod  string
   mov n4,eax

   input f,string,40
   atod  string
   mov n5,eax

   input d,string,40
   atod  string
   mov n6,eax
   imul   eax,100
   mov n6,eax

   mov eax,n5
  imul eax,50
   add n6,eax

   mov eax,n4
   imul eax,25
   add n6,eax

   mov eax,n3
   imul eax,10
   add n6,eax

   mov eax,n2
   imul eax,5
   add n6,eax

   mov eax,n1
   imul eax,1
   add n6,eax

   mov eax,n6
   mov ebx,100
   cdq
   div ebx 
   
   dtoa res1,eax
   dtoa re,edx
   output res,res1
   mov ecx,n1
   add ecx,n2
   add ecx,n3
   add ecx,n4
   add ecx,n5
   add ecx,n5
   dec ecx
   dtoa sum1,ecx
   output sum,sum1

   
   
    



mov eax,0
ret
MainProc ENDP
END
