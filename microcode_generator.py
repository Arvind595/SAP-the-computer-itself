# -*- coding: utf-8 -*-
"""
Created on Thu Jan  7 21:30:53 2021

@author: Aravind Anirudh
"""

HLT=0b100000000000000
MI =0b010000000000000
RI =0b001000000000000
RO =0b000100000000000
IO =0b000010000000000
II =0b000001000000000
AI =0b000000100000000
AO =0b000000010000000
EO =0b000000001000000
SU =0b000000000100000
BI =0b000000000010000
OI =0b000000000001000
CE =0b000000000000100
CO =0b000000000000010
J  =0b000000000000001

data=[MI|CO, RO|TI|CE,  0,0,0,0,0,0 #0000 -NOP
      MI|CO, RO|TI|CE,  0,0,0,0,0,0 #0001 -LDA
      MI|CO, RO|TI|CE,  0,0,0,0,0,0 #0010 -ADD
      MI|CO, RO|TI|CE,  0,0,0,0,0,0 #0011
      MI|CO, RO|TI|CE,  0,0,0,0,0,0 #0100
      MI|CO, RO|TI|CE,  0,0,0,0,0,0 #0101
      MI|CO, RO|TI|CE,  0,0,0,0,0,0 #0110
      MI|CO, RO|TI|CE,  0,0,0,0,0,0 #0111
      MI|CO, RO|TI|CE,  0,0,0,0,0,0 #1000
      MI|CO, RO|TI|CE,  0,0,0,0,0,0 #1001
      MI|CO, RO|TI|CE,  0,0,0,0,0,0 #1010
      MI|CO, RO|TI|CE,  0,0,0,0,0,0 #1011
      MI|CO, RO|TI|CE,  0,0,0,0,0,0 #1100
      MI|CO, RO|TI|CE,  0,0,0,0,0,0 #1101
      MI|CO, RO|TI|CE,  0,0,0,0,0,0 #1110 -OUT
      MI|CO, RO|TI|CE,  0,0,0,0,0,0 #1111 -HLT
      
      
      ]