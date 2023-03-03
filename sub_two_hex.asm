MVI A, 13H
MVI B, 15H
MVI C, 00H
SUB B ;sub B from A, A is the default register or the accumulator, it is understood even if there is no reference of A given in the statement 
JNC Loop ;jump to Loop on no carry
CMA ;complement A/Accumulator
INR A
INR C
Loop: STA 1000H ;Store the value of A in 1000H as A is the default
MOV A,C ;Store the value of C in A as now A is empty and can be used to store a value of another register
STA 1001H ;as now value of C is stored in A and A is the default register, it can simply store the value of A, which was earlier in C in 1011H
HLT
