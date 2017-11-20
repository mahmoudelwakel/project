.586
.MODEL FLAT
INCLUDE io.h
.STACK 4096
.DATA 
   grade1 DWORD ? 
   weight1 DWORD ? 
   grade2 DWORD ? 
   weight2 DWORD ? 
   grade3 DWORD ? 
   weight3 DWORD ? 
   grade4 DWORD ? 
   weight4 DWORD ?


   n1 BYTE "Enter Grade 1 " , 0 
   g1 BYTE "Enter Weight 1" , 0

   n2 BYTE "Enter Grade 2 " , 0 
   g2 BYTE "Enter Weight 2" , 0

   n3 BYTE "Enter Grade 3 " , 0 
   g3 BYTE "Enter Weight 3" , 0

   n4 BYTE "Enter Grade 4 " , 0 
   g4 BYTE "Enter Weight 4" , 0

   string BYTE 40 DUP (?)

   x BYTE "weighted sum " , 0

   v BYTE "sum of weights " , 0
 

   z BYTE "weighted average " , 0
  
   x1 BYTE 11 DUP (?) ,0
   x2 BYTE 11 DUP (?) ,"  remainder = "   
   re  BYTE 11 DUP (?)



.CODE
MainProc PROC
   input n1,string,40
   atod  string
   mov  grade1,eax

   input g1,string,40
   atod  string 
   mov  weight1,eax

   input n2,string,40
   atod  string
   mov  grade2,eax

   input g2,string,40
   atod  string 
   mov  weight2,eax

   input n3,string,40
   atod  string
   mov  grade3,eax

   input g3,string,40
   atod  string 
   mov  weight3,eax

   input n4,string,40
   atod  string
   mov  grade4,eax

   input g4,string,40
   atod  string 
   mov  weight4,eax

   mul grade4
   mov grade4,eax

   mov eax,weight3
   mul grade3
   add grade4,eax

    mov eax,weight2
   mul grade2
   add grade4,eax

    mov eax,weight1
   mul grade1
   add grade4,eax
   ;mov eax,grade4

   dtoa x1,grade4
   output x,x1


   mov eax,weight1
   add eax,weight2 
   add eax,weight3 
   add eax,weight4

   dtoa x1,eax
   output v,x1 

   mov grade1,eax
   mov eax,grade4
   div grade1
   dtoa x2,eax
   dtoa re,edx
   output z,x2




 
   


mov eax,0
ret
MainProc ENDP
END