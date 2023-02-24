;Division of two 8 bit numbers using 8085
MVI A, 07H
MVI B, 02H
MVI C, 00H
Loop: CMP B ;compare A(default) and B using A-B is greater than 0 or not
JC Result ;jump to result on carry/borrow
SUB B
INR C
JMP Loop
Result: STA 2120H
MOV A,C ;A -> reaminder store. C -> quotient store
STA 2121H
HLT
