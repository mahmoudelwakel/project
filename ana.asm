.586
.MODEL FLAT
INCLUDE io.h
.STACK
.DATA
num1 DWORD ?
num2 DWORD ?
num3 DWORD ?
num4 DWORD ?
prompt1 BYTE "Enter Grade 1 " , 0
prompt2 BYTE "Enter Grade 2 " , 0
prompt3 BYTE "Enter Grade 3 " , 0
prompt4 BYTE "Enter Grade 4 " , 0
string BYTE 40 DUP (?)
res BYTE "SUM   " , 0
sum DWORD 11 DUP (?) , 0
res1 BYTE "AVERAGE   " , 0
avg BYTE 11 DUP (?) ,"   remainder = "
re BYTE 11 DUP(?)
.CODE
MainProc PROC
input prompt1,string,40
atod  string
mov num1,eax

input prompt2,string,40
atod  string
mov num2,eax

input prompt3,string,40
atod  string
mov num3,eax

input prompt4,string,40
atod  string
mov num4,eax
add eax,num1
add eax,num2
add eax,num3
dtoa sum,eax
output res,sum



mov ebx,4
cdq
div ebx
dtoa avg,eax
dtoa re ,edx
output res1,avg


mov eax,0
ret
MainProc ENDP
END