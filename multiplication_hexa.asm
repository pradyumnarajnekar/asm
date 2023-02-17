MVI B, 00H ; 00->01->02
MVI C, 03H 03->02->01->00
MVI D, F2H
MVI A, 00H
Repeat: ADD D ; value gets added to the stack
JNC FWD ;jump on fwd if no carry
INR B 
FWD: DCR C
JNZ Repeat ;jump on repeat if no zero
STA 2021H
MOV A, B
STA 2022H
HLT
