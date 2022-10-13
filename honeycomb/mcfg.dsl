/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20190509 (64-bit version)
 * Copyright (c) 2000 - 2019 Intel Corporation
 * 
 * Disassembly of mcfg.dat, Thu Oct 13 16:12:57 2022
 *
 * ACPI Data Table [MCFG]
 *
 * Format: [HexOffset DecimalOffset ByteLength]  FieldName : FieldValue
 */

[000h 0000   4]                    Signature : "MCFG"    [Memory Mapped Configuration table]
[004h 0004   4]                 Table Length : 0000004C
[008h 0008   1]                     Revision : 01
[009h 0009   1]                     Checksum : BD
[00Ah 0010   6]                       Oem ID : "NXP   "
[010h 0016   8]                 Oem Table ID : "LX2160  "
[018h 0024   4]                 Oem Revision : 000000FF
[01Ch 0028   4]              Asl Compiler ID : "INTL"
[020h 0032   4]        Asl Compiler Revision : 20151124

[024h 0036   8]                     Reserved : 0000000000000000

[02Ch 0044   8]                 Base Address : 0000009000000000
[034h 0052   2]         Segment Group Number : 0002
[036h 0054   1]             Start Bus Number : 01
[037h 0055   1]               End Bus Number : FF
[038h 0056   4]                     Reserved : 00000000

[03Ch 0060   8]                 Base Address : 000000A000000000
[044h 0068   2]         Segment Group Number : 0004
[046h 0070   1]             Start Bus Number : 01
[047h 0071   1]               End Bus Number : FF
[048h 0072   4]                     Reserved : 00000000

Raw Table Data: Length 76 (0x4C)

    0000: 4D 43 46 47 4C 00 00 00 01 BD 4E 58 50 20 20 20  // MCFGL.....NXP   
    0010: 4C 58 32 31 36 30 20 20 FF 00 00 00 49 4E 54 4C  // LX2160  ....INTL
    0020: 24 11 15 20 00 00 00 00 00 00 00 00 00 00 00 00  // $.. ............
    0030: 90 00 00 00 02 00 01 FF 00 00 00 00 00 00 00 00  // ................
    0040: A0 00 00 00 04 00 01 FF 00 00 00 00              // ............
