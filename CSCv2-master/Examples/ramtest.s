# RAM verification
# Modify the delay code for faster CSCs.
# The last few bytes of memory don't be filled because
# that's variables space..
# --
# Chris Baird,, <cjb@brushtail.apana.org.au> 31-Oct-2017

VAL:    EQU 254
TEMP:   EQU 253

TIM0:   EQU 252 # timer loops
TIM1:   EQU 251
TIM2:   EQU 250
TIM3:   EQU 249
TIM4:   EQU 248

        ###

start:
        ZEROM VAL

repeat:
        LCA 0
        LCB 10
        DAB 0
        LCB 10
        DAB 0

loop:
        LMA VAL
        TBF
        SMA 0x00   | SMA 0x01 | SMA 0x02 | SMA 0x03 \
        | SMA 0x04 | SMA 0x05 | SMA 0x06 | SMA 0x07 \
        | SMA 0x08 | SMA 0x09 | SMA 0x0A | SMA 0x0B \
        | SMA 0x0C | SMA 0x0D | SMA 0x0E | SMA 0x0F

        TBF
        SMA 0x10   | SMA 0x11 | SMA 0x12 | SMA 0x13 \
        | SMA 0x14 | SMA 0x15 | SMA 0x16 | SMA 0x17 \
        | SMA 0x18 | SMA 0x19 | SMA 0x1A | SMA 0x1B \
        | SMA 0x1C | SMA 0x1D | SMA 0x1E | SMA 0x1F

        TBF
        SMA 0x20   | SMA 0x21 | SMA 0x22 | SMA 0x23 \
        | SMA 0x24 | SMA 0x25 | SMA 0x26 | SMA 0x27 \
        | SMA 0x28 | SMA 0x29 | SMA 0x2A | SMA 0x2B \
        | SMA 0x2C | SMA 0x2D | SMA 0x2E | SMA 0x2F

        TBF
        SMA 0x30   | SMA 0x31 | SMA 0x32 | SMA 0x33 \
        | SMA 0x34 | SMA 0x35 | SMA 0x36 | SMA 0x37 \
        | SMA 0x38 | SMA 0x39 | SMA 0x3A | SMA 0x3B \
        | SMA 0x3C | SMA 0x3D | SMA 0x3E | SMA 0x3F

        TBF
        SMA 0x40   | SMA 0x41 | SMA 0x42 | SMA 0x43 \
        | SMA 0x44 | SMA 0x45 | SMA 0x46 | SMA 0x47 \
        | SMA 0x48 | SMA 0x49 | SMA 0x4A | SMA 0x4B \
        | SMA 0x4C | SMA 0x4D | SMA 0x4E | SMA 0x4F

        TBF
        SMA 0x50   | SMA 0x51 | SMA 0x52 | SMA 0x53 \
        | SMA 0x54 | SMA 0x55 | SMA 0x56 | SMA 0x57 \
        | SMA 0x58 | SMA 0x59 | SMA 0x5A | SMA 0x5B \
        | SMA 0x5C | SMA 0x5D | SMA 0x5E | SMA 0x5F

        TBF
        SMA 0x60   | SMA 0x61 | SMA 0x62 | SMA 0x63 \
        | SMA 0x64 | SMA 0x65 | SMA 0x66 | SMA 0x67 \
        | SMA 0x68 | SMA 0x69 | SMA 0x6A | SMA 0x6B \
        | SMA 0x6C | SMA 0x6D | SMA 0x6E | SMA 0x6F

        TBF
        SMA 0x70   | SMA 0x71 | SMA 0x72 | SMA 0x73 \
        | SMA 0x74 | SMA 0x75 | SMA 0x76 | SMA 0x77 \
        | SMA 0x78 | SMA 0x79 | SMA 0x7A | SMA 0x7B \
        | SMA 0x7C | SMA 0x7D | SMA 0x7E | SMA 0x7F

        TBF
        SMA 0x80   | SMA 0x81 | SMA 0x82 | SMA 0x83 \
        | SMA 0x84 | SMA 0x85 | SMA 0x86 | SMA 0x87 \
        | SMA 0x88 | SMA 0x89 | SMA 0x8A | SMA 0x8B \
        | SMA 0x8C | SMA 0x8D | SMA 0x8E | SMA 0x8F

        TBF
        SMA 0x90   | SMA 0x91 | SMA 0x92 | SMA 0x93 \
        | SMA 0x94 | SMA 0x95 | SMA 0x96 | SMA 0x97 \
        | SMA 0x98 | SMA 0x99 | SMA 0x9A | SMA 0x9B \
        | SMA 0x9C | SMA 0x9D | SMA 0x9E | SMA 0x9F

        TBF
        SMA 0xA0   | SMA 0xA1 | SMA 0xA2 | SMA 0xA3 \
        | SMA 0xA4 | SMA 0xA5 | SMA 0xA6 | SMA 0xA7 \
        | SMA 0xA8 | SMA 0xA9 | SMA 0xAA | SMA 0xAB \
        | SMA 0xAC | SMA 0xAD | SMA 0xAE | SMA 0xAF

        TBF
        SMA 0xB0   | SMA 0xB1 | SMA 0xB2 | SMA 0xB3 \
        | SMA 0xB4 | SMA 0xB5 | SMA 0xB6 | SMA 0xB7 \
        | SMA 0xB8 | SMA 0xB9 | SMA 0xBA | SMA 0xBB \
        | SMA 0xBC | SMA 0xBD | SMA 0xBE | SMA 0xBF

        TBF
        SMA 0xC0   | SMA 0xC1 | SMA 0xC2 | SMA 0xC3 \
        | SMA 0xC4 | SMA 0xC5 | SMA 0xC6 | SMA 0xC7 \
        | SMA 0xC8 | SMA 0xC9 | SMA 0xCA | SMA 0xCB \
        | SMA 0xCC | SMA 0xCD | SMA 0xCE | SMA 0xCF

        TBF
        SMA 0xD0   | SMA 0xD1 | SMA 0xD2 | SMA 0xD3 \
        | SMA 0xD4 | SMA 0xD5 | SMA 0xD6 | SMA 0xD7 \
        | SMA 0xD8 | SMA 0xD9 | SMA 0xDA | SMA 0xDB \
        | SMA 0xDC | SMA 0xDD | SMA 0xDE | SMA 0xDF

        TBF
        SMA 0xE0   | SMA 0xE1 | SMA 0xE2 | SMA 0xE3 \
        | SMA 0xE4 | SMA 0xE5 | SMA 0xE6 | SMA 0xE7 \
        | SMA 0xE8 | SMA 0xE9 | SMA 0xEA | SMA 0xEB \
        | SMA 0xEC | SMA 0xED | SMA 0xEE | SMA 0xEF

        TBF
        SMA 0xF0   | SMA 0xF1 | SMA 0xF2 | SMA 0xF3 \
        | SMA 0xF4 | SMA 0xF5 | SMA 0xF6 | SMA 0xF7 \
        | NOP      | NOP      | NOP      | NOP      \
        | NOP      | NOP      | NOP      | NOP

        TBF
        LCB 1 | LCB 2 | LCB 3 | LCB 4 | LCB 5 | LCB 6 | LCB 7 | LCB 8 \
        | LCB 9 | LCB 10 | LCB 11 | LCB 12 | LCB 13 | LCB 14 | LCB 15 \
	| JMP delay

        JMP loop

        ###


delay:
        #LCA 1
        #LCB 0
loop0:
        #ADDMB TEMP
        #JZC loop0

        #LMB TIM0
        #ADDMB TIM0
        #JZC loop0

        #LMB TIM1
        #ADDMB TIM1
        #JZC loop0

        #LMB TIM2
        #ADDMB TIM2
        #JZC loop0

        #LMB TIM3
        #ADDMB TIM3
        #JZC loop0

        #LMB TIM4
        #ADDMB TIM4
        #JZC loop0

        ###

        LCB 0

resloop:
        TBF
        LMA 0x00   | LMA 0x10 | LMA 0x20 | LMA 0x30 \
        | LMA 0x40 | LMA 0x50 | LMA 0x60 | LMA 0x70 \
        | LMA 0x80 | LMA 0x90 | LMA 0xA0 | LMA 0xB0 \
        | LMA 0xC0 | LMA 0xD0 | LMA 0xE0 | LMA 0xF0
        SMB TEMP
        TAB
        LCA 4
        DMAB TEMP

        TBF
        LMA 0x01   | LMA 0x11 | LMA 0x21 | LMA 0x31 \
        | LMA 0x41 | LMA 0x51 | LMA 0x61 | LMA 0x71 \
        | LMA 0x81 | LMA 0x91 | LMA 0xA1 | LMA 0xB1 \
        | LMA 0xC1 | LMA 0xD1 | LMA 0xE1 | LMA 0xF1
        SMB TEMP
        TAB
        LCA 4
        DMAB TEMP

        TBF
        LMA 0x02   | LMA 0x12 | LMA 0x22 | LMA 0x32 \
        | LMA 0x42 | LMA 0x52 | LMA 0x62 | LMA 0x72 \
        | LMA 0x82 | LMA 0x92 | LMA 0xA2 | LMA 0xB2 \
        | LMA 0xC2 | LMA 0xD2 | LMA 0xE2 | LMA 0xF2
        SMB TEMP
        TAB
        LCA 4
        DMAB TEMP

        TBF
        LMA 0x03   | LMA 0x13 | LMA 0x23 | LMA 0x33 \
        | LMA 0x43 | LMA 0x53 | LMA 0x63 | LMA 0x73 \
        | LMA 0x83 | LMA 0x93 | LMA 0xA3 | LMA 0xB3 \
        | LMA 0xC3 | LMA 0xD3 | LMA 0xE3 | LMA 0xF3
        SMB TEMP
        TAB
        LCA 4
        DMAB TEMP

        TBF
        LMA 0x04   | LMA 0x14 | LMA 0x24 | LMA 0x34 \
        | LMA 0x44 | LMA 0x54 | LMA 0x64 | LMA 0x74 \
        | LMA 0x84 | LMA 0x94 | LMA 0xA4 | LMA 0xB4 \
        | LMA 0xC4 | LMA 0xD4 | LMA 0xE4 | LMA 0xF4
        SMB TEMP
        TAB
        LCA 4
        DMAB TEMP

        TBF
        LMA 0x05   | LMA 0x15 | LMA 0x25 | LMA 0x35 \
        | LMA 0x45 | LMA 0x55 | LMA 0x65 | LMA 0x75 \
        | LMA 0x85 | LMA 0x95 | LMA 0xA5 | LMA 0xB5 \
        | LMA 0xC5 | LMA 0xD5 | LMA 0xE5 | LMA 0xF5
        SMB TEMP
        TAB
        LCA 4
        DMAB TEMP

        TBF
        LMA 0x06   | LMA 0x16 | LMA 0x26 | LMA 0x36 \
        | LMA 0x46 | LMA 0x56 | LMA 0x66 | LMA 0x76 \
        | LMA 0x86 | LMA 0x96 | LMA 0xA6 | LMA 0xB6 \
        | LMA 0xC6 | LMA 0xD6 | LMA 0xE6 | LMA 0xF6
        SMB TEMP
        TAB
        LCA 4
        DMAB TEMP

        TBF
        LMA 0x07   | LMA 0x17 | LMA 0x27 | LMA 0x37 \
        | LMA 0x47 | LMA 0x57 | LMA 0x67 | LMA 0x77 \
        | LMA 0x87 | LMA 0x97 | LMA 0xA7 | LMA 0xB7 \
        | LMA 0xC7 | LMA 0xD7 | LMA 0xE7 | LMA 0xF7
        SMB TEMP
        TAB
        LCA 4
        DMAB TEMP

        TBF
        LMA 0x08   | LMA 0x18 | LMA 0x28 | LMA 0x38 \
        | LMA 0x48 | LMA 0x58 | LMA 0x68 | LMA 0x78 \
        | LMA 0x88 | LMA 0x98 | LMA 0xA8 | LMA 0xB8 \
        | LMA 0xC8 | LMA 0xD8 | LMA 0xE8 | LMA 0xF8
        SMB TEMP
        TAB
        LCA 4
        DMAB TEMP

        TBF
        LMA 0x09   | LMA 0x19 | LMA 0x29 | LMA 0x39 \
        | LMA 0x49 | LMA 0x59 | LMA 0x69 | LMA 0x79 \
        | LMA 0x89 | LMA 0x99 | LMA 0xA9 | LMA 0xB9 \
        | LMA 0xC9 | LMA 0xD9 | LMA 0xE9 | LMA 0xF9
        SMB TEMP
        TAB
        LCA 4
        DMAB TEMP

        TBF
        LMA 0x0A   | LMA 0x1A | LMA 0x2A | LMA 0x3A \
        | LMA 0x4A | LMA 0x5A | LMA 0x6A | LMA 0x7A \
        | LMA 0x8A | LMA 0x9A | LMA 0xAA | LMA 0xBA \
        | LMA 0xCA | LMA 0xDA | LMA 0xEA | LMA 0xFA
        SMB TEMP
        TAB
        LCA 4
        DMAB TEMP

        TBF
        LMA 0x0B   | LMA 0x1B | LMA 0x2B | LMA 0x3B \
        | LMA 0x4B | LMA 0x5B | LMA 0x6B | LMA 0x7B \
        | LMA 0x8B | LMA 0x9B | LMA 0xAB | LMA 0xBB \
        | LMA 0xCB | LMA 0xDB | LMA 0xEB | LMA 0xFB
        SMB TEMP
        TAB
        LCA 4
        DMAB TEMP

        TBF
        LMA 0x0C   | LMA 0x1C | LMA 0x2C | LMA 0x3C \
        | LMA 0x4C | LMA 0x5C | LMA 0x6C | LMA 0x7C \
        | LMA 0x8C | LMA 0x9C | LMA 0xAC | LMA 0xBC \
        | LMA 0xCC | LMA 0xDC | LMA 0xEC | LMA 0xFC
        SMB TEMP
        TAB
        LCA 4
        DMAB TEMP

        TBF
        LMA 0x0D   | LMA 0x1D | LMA 0x2D | LMA 0x3D \
        | LMA 0x4D | LMA 0x5D | LMA 0x6D | LMA 0x7D \
        | LMA 0x8D | LMA 0x9D | LMA 0xAD | LMA 0xBD \
        | LMA 0xCD | LMA 0xDD | LMA 0xED | LMA 0xFD
        SMB TEMP
        TAB
        LCA 4
        DMAB TEMP

        TBF
        LMA 0x0E   | LMA 0x1E | LMA 0x2E | LMA 0x3E \
        | LMA 0x4E | LMA 0x5E | LMA 0x6E | LMA 0x7E \
        | LMA 0x8E | LMA 0x9E | LMA 0xAE | LMA 0xBE \
        | LMA 0xCE | LMA 0xDE | LMA 0xEE | LMA 0xFE
        SMB TEMP
        TAB
        LCA 4
        DMAB TEMP

        TBF
        LMA 0x0F   | LMA 0x1F | LMA 0x2F | LMA 0x3F \
        | LMA 0x4F | LMA 0x5F | LMA 0x6F | LMA 0x7F \
        | LMA 0x8F | LMA 0x9F | LMA 0xAF | LMA 0xBF \
        | LMA 0xCF | LMA 0xDF | LMA 0xEF | LMA 0xFF
        SMB TEMP
        TAB
        LCA 4
        DAB 0
        LCB 10
        DMAB TEMP

        LCA 1
        ADDMB TEMP
        JCC resloop

        LMA VAL
        SMIA VAL

        JMP repeat

###