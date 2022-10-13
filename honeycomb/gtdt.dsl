/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20190509 (64-bit version)
 * Copyright (c) 2000 - 2019 Intel Corporation
 * 
 * Disassembly of gtdt.dat, Thu Oct 13 16:12:57 2022
 *
 * ACPI Data Table [GTDT]
 *
 * Format: [HexOffset DecimalOffset ByteLength]  FieldName : FieldValue
 */

[000h 0000   4]                    Signature : "GTDT"    [Generic Timer Description Table]
[004h 0004   4]                 Table Length : 00000130
[008h 0008   1]                     Revision : 02
[009h 0009   1]                     Checksum : 61
[00Ah 0010   6]                       Oem ID : "NXP   "
[010h 0016   8]                 Oem Table ID : "LX2160  "
[018h 0024   4]                 Oem Revision : 00000000
[01Ch 0028   4]              Asl Compiler ID : "INTL"
[020h 0032   4]        Asl Compiler Revision : 20151124

[024h 0036   8]        Counter Block Address : 00000000023E0000
[02Ch 0044   4]                     Reserved : 00000000

[030h 0048   4]         Secure EL1 Interrupt : 0000001D
[034h 0052   4]    EL1 Flags (decoded below) : 00000002
                                Trigger Mode : 0
                                    Polarity : 1
                                   Always On : 0

[038h 0056   4]     Non-Secure EL1 Interrupt : 0000001E
[03Ch 0060   4]   NEL1 Flags (decoded below) : 00000002
                                Trigger Mode : 0
                                    Polarity : 1
                                   Always On : 0

[040h 0064   4]      Virtual Timer Interrupt : 0000001B
[044h 0068   4]     VT Flags (decoded below) : 00000002
                                Trigger Mode : 0
                                    Polarity : 1
                                   Always On : 0

[048h 0072   4]     Non-Secure EL2 Interrupt : 0000001A
[04Ch 0076   4]   NEL2 Flags (decoded below) : 00000002
                                Trigger Mode : 0
                                    Polarity : 1
                                   Always On : 0
[050h 0080   8]   Counter Read Block Address : 00000000023F0000

[058h 0088   4]         Platform Timer Count : 00000002
[05Ch 0092   4]        Platform Timer Offset : 00000060

[060h 0096   1]                Subtable Type : 00 [Generic Timer Block]
[061h 0097   2]                       Length : 00B4
[063h 0099   1]                     Reserved : 00
[064h 0100   8]                Block Address : 0000000002890000
[06Ch 0108   4]                  Timer Count : 00000004
[070h 0112   4]                 Timer Offset : 00000014

[074h 0116   1]                 Frame Number : 00
[075h 0117   3]                     Reserved : 000000
[078h 0120   8]                 Base Address : 00000000028A0000
[080h 0128   8]             EL0 Base Address : 00000000028E0000
[088h 0136   4]              Timer Interrupt : 0000004E
[08Ch 0140   4]  Timer Flags (decoded below) : 00000000
                                Trigger Mode : 0
                                    Polarity : 0
[090h 0144   4]      Virtual Timer Interrupt : 0000004E
[094h 0148   4] Virtual Timer Flags (decoded below) : 00000000
                                Trigger Mode : 0
                                    Polarity : 0
[098h 0152   4] Common Flags (decoded below) : 00000000
                                      Secure : 0
                                   Always On : 0

[09Ch 0156   1]                 Frame Number : 01
[09Dh 0157   3]                     Reserved : 000000
[0A0h 0160   8]                 Base Address : 00000000028B0000
[0A8h 0168   8]             EL0 Base Address : FFFFFFFFFFFFFFFF
[0B0h 0176   4]              Timer Interrupt : 0000004F
[0B4h 0180   4]  Timer Flags (decoded below) : 00000000
                                Trigger Mode : 0
                                    Polarity : 0
[0B8h 0184   4]      Virtual Timer Interrupt : 00000000
[0BCh 0188   4] Virtual Timer Flags (decoded below) : 00000000
                                Trigger Mode : 0
                                    Polarity : 0
[0C0h 0192   4] Common Flags (decoded below) : 00000001
                                      Secure : 1
                                   Always On : 0

[0C4h 0196   1]                 Frame Number : 02
[0C5h 0197   3]                     Reserved : 000000
[0C8h 0200   8]                 Base Address : 00000000028C0000
[0D0h 0208   8]             EL0 Base Address : 00000000028F0000
[0D8h 0216   4]              Timer Interrupt : 0000005C
[0DCh 0220   4]  Timer Flags (decoded below) : 00000000
                                Trigger Mode : 0
                                    Polarity : 0
[0E0h 0224   4]      Virtual Timer Interrupt : 00000000
[0E4h 0228   4] Virtual Timer Flags (decoded below) : 00000000
                                Trigger Mode : 0
                                    Polarity : 0
[0E8h 0232   4] Common Flags (decoded below) : 00000001
                                      Secure : 1
                                   Always On : 0

[0ECh 0236   1]                 Frame Number : 03
[0EDh 0237   3]                     Reserved : 000000
[0F0h 0240   8]                 Base Address : 00000000028D0000
[0F8h 0248   8]             EL0 Base Address : FFFFFFFFFFFFFFFF
[100h 0256   4]              Timer Interrupt : 0000005D
[104h 0260   4]  Timer Flags (decoded below) : 00000000
                                Trigger Mode : 0
                                    Polarity : 0
[108h 0264   4]      Virtual Timer Interrupt : 00000000
[10Ch 0268   4] Virtual Timer Flags (decoded below) : 00000000
                                Trigger Mode : 0
                                    Polarity : 0
[110h 0272   4] Common Flags (decoded below) : 00000001
                                      Secure : 1
                                   Always On : 0

[114h 0276   1]                Subtable Type : 01 [Generic Watchdog Timer]
[115h 0277   2]                       Length : 001C
[117h 0279   1]                     Reserved : 00
[118h 0280   8]        Refresh Frame Address : 0000000002390000
[120h 0288   8]        Control Frame Address : 00000000023A0000
[128h 0296   4]              Timer Interrupt : 0000005B
[12Ch 0300   4]  Timer Flags (decoded below) : 00000000
                                Trigger Mode : 0
                                    Polarity : 0
                                    Security : 0

Raw Table Data: Length 304 (0x130)

    0000: 47 54 44 54 30 01 00 00 02 61 4E 58 50 20 20 20  // GTDT0....aNXP   
    0010: 4C 58 32 31 36 30 20 20 00 00 00 00 49 4E 54 4C  // LX2160  ....INTL
    0020: 24 11 15 20 00 00 3E 02 00 00 00 00 00 00 00 00  // $.. ..>.........
    0030: 1D 00 00 00 02 00 00 00 1E 00 00 00 02 00 00 00  // ................
    0040: 1B 00 00 00 02 00 00 00 1A 00 00 00 02 00 00 00  // ................
    0050: 00 00 3F 02 00 00 00 00 02 00 00 00 60 00 00 00  // ..?.........`...
    0060: 00 B4 00 00 00 00 89 02 00 00 00 00 04 00 00 00  // ................
    0070: 14 00 00 00 00 00 00 00 00 00 8A 02 00 00 00 00  // ................
    0080: 00 00 8E 02 00 00 00 00 4E 00 00 00 00 00 00 00  // ........N.......
    0090: 4E 00 00 00 00 00 00 00 00 00 00 00 01 00 00 00  // N...............
    00A0: 00 00 8B 02 00 00 00 00 FF FF FF FF FF FF FF FF  // ................
    00B0: 4F 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  // O...............
    00C0: 01 00 00 00 02 00 00 00 00 00 8C 02 00 00 00 00  // ................
    00D0: 00 00 8F 02 00 00 00 00 5C 00 00 00 00 00 00 00  // ........\.......
    00E0: 00 00 00 00 00 00 00 00 01 00 00 00 03 00 00 00  // ................
    00F0: 00 00 8D 02 00 00 00 00 FF FF FF FF FF FF FF FF  // ................
    0100: 5D 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  // ]...............
    0110: 01 00 00 00 01 1C 00 00 00 00 39 02 00 00 00 00  // ..........9.....
    0120: 00 00 3A 02 00 00 00 00 5B 00 00 00 00 00 00 00  // ..:.....[.......
