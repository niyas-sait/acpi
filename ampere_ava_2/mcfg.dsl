/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20190509 (64-bit version)
 * Copyright (c) 2000 - 2019 Intel Corporation
 * 
 * Disassembly of mcfg.dat, Tue Aug  2 11:54:14 2022
 *
 * ACPI Data Table [MCFG]
 *
 * Format: [HexOffset DecimalOffset ByteLength]  FieldName : FieldValue
 */

[000h 0000   4]                    Signature : "MCFG"    [Memory Mapped Configuration table]
[004h 0004   4]                 Table Length : 0000008C
[008h 0008   1]                     Revision : 01
[009h 0009   1]                     Checksum : A9
[00Ah 0010   6]                       Oem ID : "Ampere"
[010h 0016   8]                 Oem Table ID : "Altra   "
[018h 0024   4]                 Oem Revision : 00000001
[01Ch 0028   4]              Asl Compiler ID : "AMP."
[020h 0032   4]        Asl Compiler Revision : 01000013

[024h 0036   8]                     Reserved : 0000000000000000

[02Ch 0044   8]                 Base Address : 000033FFF0000000
[034h 0052   2]         Segment Group Number : 000C
[036h 0054   1]             Start Bus Number : 00
[037h 0055   1]               End Bus Number : FF
[038h 0056   4]                     Reserved : 00000000

[03Ch 0060   8]                 Base Address : 000037FFF0000000
[044h 0068   2]         Segment Group Number : 000D
[046h 0070   1]             Start Bus Number : 00
[047h 0071   1]               End Bus Number : FF
[048h 0072   4]                     Reserved : 00000000

[04Ch 0076   8]                 Base Address : 00003FFFF0000000
[054h 0084   2]         Segment Group Number : 0000
[056h 0086   1]             Start Bus Number : 00
[057h 0087   1]               End Bus Number : FF
[058h 0088   4]                     Reserved : 00000000

[05Ch 0092   8]                 Base Address : 000023FFF0000000
[064h 0100   2]         Segment Group Number : 0002
[066h 0102   1]             Start Bus Number : 00
[067h 0103   1]               End Bus Number : FF
[068h 0104   4]                     Reserved : 00000000

[06Ch 0108   8]                 Base Address : 00002BFFF0000000
[074h 0116   2]         Segment Group Number : 0004
[076h 0118   1]             Start Bus Number : 00
[077h 0119   1]               End Bus Number : FF
[078h 0120   4]                     Reserved : 00000000

[07Ch 0124   8]                 Base Address : 00002FFFF0000000
[084h 0132   2]         Segment Group Number : 0005
[086h 0134   1]             Start Bus Number : 00
[087h 0135   1]               End Bus Number : FF
[088h 0136   4]                     Reserved : 00000000

Raw Table Data: Length 140 (0x8C)

    0000: 4D 43 46 47 8C 00 00 00 01 A9 41 6D 70 65 72 65  // MCFG......Ampere
    0010: 41 6C 74 72 61 20 20 20 01 00 00 00 41 4D 50 2E  // Altra   ....AMP.
    0020: 13 00 00 01 00 00 00 00 00 00 00 00 00 00 00 F0  // ................
    0030: FF 33 00 00 0C 00 00 FF 00 00 00 00 00 00 00 F0  // .3..............
    0040: FF 37 00 00 0D 00 00 FF 00 00 00 00 00 00 00 F0  // .7..............
    0050: FF 3F 00 00 00 00 00 FF 00 00 00 00 00 00 00 F0  // .?..............
    0060: FF 23 00 00 02 00 00 FF 00 00 00 00 00 00 00 F0  // .#..............
    0070: FF 2B 00 00 04 00 00 FF 00 00 00 00 00 00 00 F0  // .+..............
    0080: FF 2F 00 00 05 00 00 FF 00 00 00 00              // ./..........
