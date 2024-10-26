;----------------------------------------------------------------------------
; This data specifies the behaviour of the GUI
; Stored at $4800 ($C800) in ROM and copied to 7F:1000 in RAM by
; ROM_2_RAM_INTERFACE (in misc.asm).
; Author: Michael Hirschmugl
;
; Data Format:
; 0xXX 00ACRDLU A:Active (unused) C:Curser (unused) RDLU:Allowed directions in bits
; 0xXX   (unused)
; 0x0000 Next address for UP
; 0x0000 Next address for LEFT
; 0x0000 Next address for DOWN
; 0x0000 Next address for RIGHT
; 0x0000 Location in Tilemap (bank is always 7F)
; 0x00   Only for swapping waveforms: corresponding channel waveform RAM buffer address
; 0x00   Only for swapping waveforms: Wave Number (for noise: bit for noise channel)
;
;----------------------------------------------------------------------------
.bank 0
.org 18432
.section "interface_data" force

interface:
;.org $7F:1000
;7F:1000 - 7F:11C2
;546 bytes
    ;objects:
    .word $0800, $0000, $0000, $0000, $100E, $01C2, $0000
    .word $0E00, $0000, $1000, $10A8, $101C, $01C8, $0000
    .word $0A00, $0000, $100E, $0000, $102A, $01CC, $0000
    .word $0A00, $0000, $101C, $0000, $1038, $01D2, $0000
    .word $0E00, $0000, $102A, $10B6, $1046, $01D8, $0000
    .word $0A00, $0000, $1038, $0000, $1054, $01DC, $0000
    .word $0A00, $0000, $1046, $0000, $1062, $01E2, $0000
    .word $0E00, $0000, $1054, $10C4, $1070, $01E8, $0000
    .word $0A00, $0000, $1062, $0000, $107E, $01EC, $0000
    .word $0A00, $0000, $1070, $0000, $108C, $01F2, $0000
    .word $0E00, $0000, $107E, $10D2, $109A, $01F8, $0000
    .word $0200, $0000, $108C, $0000, $100E, $01FC, $0000
    .word $0500, $100E, $0000, $10E0, $0000, $0348, $0004
    .word $0500, $1038, $0000, $10EE, $0000, $0358, $0014
    .word $0500, $1062, $0000, $10FC, $0000, $0368, $0024
    .word $0500, $108C, $0000, $110A, $0000, $0378, $0034
    .word $0500, $10A8, $0000, $1118, $0000, $03C8, $0104
    .word $0500, $10B6, $0000, $1126, $0000, $03D8, $0114
    .word $0500, $10C4, $0000, $1134, $0000, $03E8, $0124
    .word $0500, $10D2, $0000, $1142, $0000, $03F8, $0134
    .word $0500, $10E0, $0000, $1150, $0000, $0448, $0204
    .word $0500, $10EE, $0000, $115E, $0000, $0458, $0214
    .word $0500, $10FC, $0000, $116C, $0000, $0468, $0224
    .word $0500, $110A, $0000, $117A, $0000, $0478, $0234
    .word $0500, $1118, $0000, $1188, $0000, $04C8, $0304
    .word $0500, $1126, $0000, $1196, $0000, $04D8, $0314
    .word $0500, $1134, $0000, $11A4, $0000, $04E8, $0324
    .word $0500, $1142, $0000, $11B2, $0000, $04F8, $0334
    .word $0100, $1150, $0000, $0000, $0000, $0548, $0001
    .word $0100, $115E, $0000, $0000, $0000, $0558, $0002
    .word $0100, $116C, $0000, $0000, $0000, $0568, $0004
    .word $0100, $117A, $0000, $0000, $0000, $0578, $0008

    .word $1188 ; $7F:11C0

interface_end:
.ends
;============================================================================
