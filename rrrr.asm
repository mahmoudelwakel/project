.586
.MODEL FLAT
INCLUDE io.h
.STACK 4096
.DATA 
   pennies DWORD ? 
   nickels DWORD ? 
   dimes DWORD ? 
   quarter DWORD ? 
   fifty DWORD ? 
   dollar DWORD ? 
 


     n1 BYTE "Enter pennies " , 0 
     n2 BYTE "Enter nickel " , 0 
	 n3 BYTE "Enter dimes " , 0 
	 n4 BYTE "Enter quarter " , 0 
	 n5 BYTE "Enter fifty " , 0 
	 n6 BYTE "Enter dollar " , 0 

   string BYTE 40 DUP (?),0

   x BYTE " sum " , 0
  
  
   x1 BYTE 11 DUP (?) ,"  remainder = "   
   re  BYTE 11 DUP (?) , " cents"



.CODE
MainProc PROC


input n1,string,40
atod  string
mov pennies,eax 

input n2,string,40
atod  string
imul eax,5
add pennies,eax 

input n3,string,40
atod  string
imul eax,10
add pennies,eax 

input n4,string,40
atod  string
imul eax,25
add pennies,eax 

input n5,string,40
atod  string
imul eax,50
add pennies,eax

input n6,string,40
atod  string
imul eax,100
add eax,pennies
mov ebx,100
cdq
div ebx
dtoa x1,eax
dtoa re,edx
output x,x1

  
   


mov eax,0
ret
MainProc ENDP
END