;Addition of two 16-bit numbers using 8085
;we can enter the values here also using MVI and also by double clicking on the memory 2050 in memory view, it will give the option for you to type the values
LHLD 2050H ;load H-L pair(cause 16-bit), needs two addresses as there are two registers, so it by default considers the next address as well, that is why we are specifiying the next address as 2052
XCHG ;exchange between only D-E pair and H-L pair
LHLD 2052H ;now again loading pair to complete the 16-bit storage
DAD D ;HL = HL + DE
;DAD B => HL = HL + BC
MVI C,00H 
JNC Loop
INR C
Loop: SHLD 2056H; Store HL pair, 2056 -> L and 2057 -> H value store, higher address have 1st register
MOV A,C
STA 2058H
HLT
