# -*- coding: utf-8 -*-
"""
Created on Thu Jan  7 21:30:53 2021

@author: Aravind Anirudh
"""

HLT=0b1000000000000000 #halt
MI =0b0100000000000000 #Memoru Address Register In
RI =0b0010000000000000 #RAM In
RO =0b0001000000000000 #RAM Out
IO =0b0000100000000000 #Instruction Register Out
II =0b0000010000000000 #Instruction Register In
AI =0b0000001000000000 #A Register In
AO =0b0000000100000000 #A Register Out
EO =0b0000000010000000 #ALU Out
SU =0b0000000001000000 #Subtract
BI =0b0000000000100000 #B Register In
OI =0b0000000000010000 #Display Register In
CE =0b0000000000001000 #Counter Enable
CO =0b0000000000000100 #Counter Out
J  =0b0000000000000010 #Jump
BO =0b0000000000000001 #B Register Out


micro_code_data=[#T0,T1,T2,T3,T4,T5,T6
                  MI|CO,      RO|TI|CE,      0,       0,    0,    0,    0,    0 #0000 -NOP
                  MI|CO,      RO|TI|CE,      IO|MI,   RO|AI,      0,    0,    0,    0 #0001 -LDA
                  MI|CO,      RO|TI|CE,      IO|MI,   RO|BI,      EO|AI,      0,    0,    0 #0010 -ADD
                  MI|CO,      RO|TI|CE,      0,0,0,0,0,0 #0011
                  MI|CO,      RO|TI|CE,      0,0,0,0,0,0 #0100
                  MI|CO,      RO|TI|CE,      0,0,0,0,0,0 #0101
                  MI|CO,      RO|TI|CE,      0,0,0,0,0,0 #0110
                  MI|CO,      RO|TI|CE,      0,0,0,0,0,0 #0111
                  MI|CO,      RO|TI|CE,      0,0,0,0,0,0 #1000
                  MI|CO,      RO|TI|CE,      0,0,0,0,0,0 #100１
                  MI|CO,      RO|TI|CE,      0,0,0,0,0,0 #1010
                  MI|CO,      RO|TI|CE,      0,0,0,0,0,0 #1011
                  MI|CO,      RO|TI|CE,      0,0,0,0,0,0 #1100
                  MI|CO,      RO|TI|CE,      0,0,0,0,0,0 #1101
                  MI|CO,      RO|TI|CE,      0,0,0,0,0,0 #1110
                  MI|CO,      RO|TI|CE,      0,0,0,0,0,0 #1111 -HLT
]