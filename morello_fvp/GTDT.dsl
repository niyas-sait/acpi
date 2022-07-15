/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20190509 (64-bit version)
 * Copyright (c) 2000 - 2019 Intel Corporation
 * 
 * Disassembly of GTDT, Fri Jul 15 09:45:25 2022
 *
 * ACPI Data Table [GTDT]
 *
 * Format: [HexOffset DecimalOffset ByteLength]  FieldName : FieldValue
 */

[000h 0000   4]                    Signature : "GTDT"    [Generic Timer Description Table]
[004h 0004   4]                 Table Length : 000000E8
[008h 0008   1]                     Revision : 03
[009h 0009   1]                     Checksum : 1A
[00Ah 0010   6]                       Oem ID : "ARMLTD"
[010h 0016   8]                 Oem Table ID : "ARMLGTDT"
[018h 0024   4]                 Oem Revision : 00010000
[01Ch 0028   4]              Asl Compiler ID : "ARMH"
[020h 0032   4]        Asl Compiler Revision : 00010000

[024h 0036   8]        Counter Block Address : 000000002A430000
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
[050h 0080   8]   Counter Read Block Address : 000000002A800000

[058h 0088   4]         Platform Timer Count : 00000002
[05Ch 0092   4]        Platform Timer Offset : 00000068
[060h 0096   4]       Virtual EL2 Timer GSIV : 00000000
[064h 0100   4]      Virtual EL2 Timer Flags : 00000000

[068h 0104   1]                Subtable Type : 00 [Generic Timer Block]
[069h 0105   2]                       Length : 0064
[06Bh 0107   1]                     Reserved : 00
[06Ch 0108   8]                Block Address : 000000002A810000
[074h 0116   4]                  Timer Count : 00000002
[078h 0120   4]                 Timer Offset : 00000014

[07Ch 0124   1]                 Frame Number : 00
[07Dh 0125   3]                     Reserved : 000000
[080h 0128   8]                 Base Address : 000000002A830000
[088h 0136   8]             EL0 Base Address : FFFFFFFFFFFFFFFF
[090h 0144   4]              Timer Interrupt : 0000005C
[094h 0148   4]  Timer Flags (decoded below) : 00000000
                                Trigger Mode : 0
                                    Polarity : 0
[098h 0152   4]      Virtual Timer Interrupt : 00000000
[09Ch 0156   4] Virtual Timer Flags (decoded below) : 00000000
                                Trigger Mode : 0
                                    Polarity : 0
[0A0h 0160   4] Common Flags (decoded below) : 00000002
                                      Secure : 0
                                   Always On : 1

[0A4h 0164   1]                 Frame Number : 01
[0A5h 0165   3]                     Reserved : 000000
[0A8h 0168   8]                 Base Address : 000000002A820000
[0B0h 0176   8]             EL0 Base Address : FFFFFFFFFFFFFFFF
[0B8h 0184   4]              Timer Interrupt : 0000005B
[0BCh 0188   4]  Timer Flags (decoded below) : 00000000
                                Trigger Mode : 0
                                    Polarity : 0
[0C0h 0192   4]      Virtual Timer Interrupt : 00000000
[0C4h 0196   4] Virtual Timer Flags (decoded below) : 00000000
                                Trigger Mode : 0
                                    Polarity : 0
[0C8h 0200   4] Common Flags (decoded below) : 00000003
                                      Secure : 1
                                   Always On : 1

[0CCh 0204   1]                Subtable Type : 01 [Generic Watchdog Timer]
[0CDh 0205   2]                       Length : 001C
[0CFh 0207   1]                     Reserved : 00
[0D0h 0208   8]        Refresh Frame Address : 000000002A450000
[0D8h 0216   8]        Control Frame Address : 000000002A440000
[0E0h 0224   4]              Timer Interrupt : 0000005D
[0E4h 0228   4]  Timer Flags (decoded below) : 00000000
                                Trigger Mode : 0
                                    Polarity : 0
                                    Security : 0

Raw Table Data: Length 232 (0xE8)

    0000: 47 54 44 54 E8 00 00 00 03 1A 41 52 4D 4C 54 44  // GTDT......ARMLTD
    0010: 41 52 4D 4C 47 54 44 54 00 00 01 00 41 52 4D 48  // ARMLGTDT....ARMH
    0020: 00 00 01 00 00 00 43 2A 00 00 00 00 00 00 00 00  // ......C*........
    0030: 1D 00 00 00 02 00 00 00 1E 00 00 00 02 00 00 00  // ................
    0040: 1B 00 00 00 02 00 00 00 1A 00 00 00 02 00 00 00  // ................
    0050: 00 00 80 2A 00 00 00 00 02 00 00 00 68 00 00 00  // ...*........h...
    0060: 00 00 00 00 00 00 00 00 00 64 00 00 00 00 81 2A  // .........d.....*
    0070: 00 00 00 00 02 00 00 00 14 00 00 00 00 00 00 00  // ................
    0080: 00 00 83 2A 00 00 00 00 FF FF FF FF FF FF FF FF  // ...*............
    0090: 5C 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  // \...............
    00A0: 02 00 00 00 01 00 00 00 00 00 82 2A 00 00 00 00  // ...........*....
    00B0: FF FF FF FF FF FF FF FF 5B 00 00 00 00 00 00 00  // ........[.......
    00C0: 00 00 00 00 00 00 00 00 03 00 00 00 01 1C 00 00  // ................
    00D0: 00 00 45 2A 00 00 00 00 00 00 44 2A 00 00 00 00  // ..E*......D*....
    00E0: 5D 00 00 00 00 00 00 00                          // ].......
