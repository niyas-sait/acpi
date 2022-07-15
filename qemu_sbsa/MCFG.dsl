/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20190509 (64-bit version)
 * Copyright (c) 2000 - 2019 Intel Corporation
 * 
 * Disassembly of MCFG, Fri Jul  8 10:51:32 2022
 *
 * ACPI Data Table [MCFG]
 *
 * Format: [HexOffset DecimalOffset ByteLength]  FieldName : FieldValue
 */

[000h 0000   4]                    Signature : "MCFG"    [Memory Mapped Configuration table]
[004h 0004   4]                 Table Length : 0000004C
[008h 0008   1]                     Revision : 01
[009h 0009   1]                     Checksum : ED
[00Ah 0010   6]                       Oem ID : "LINARO"
[010h 0016   8]                 Oem Table ID : "SBSAQEMU"
[018h 0024   4]                 Oem Revision : 20200810
[01Ch 0028   4]              Asl Compiler ID : "LNRO"
[020h 0032   4]        Asl Compiler Revision : 00000001

[024h 0036   8]                     Reserved : 0000000000000000

[02Ch 0044   8]                 Base Address : 00000000F0000000
[034h 0052   2]         Segment Group Number : 0000
[036h 0054   1]             Start Bus Number : 00
[037h 0055   1]               End Bus Number : FF
[038h 0056   4]                     Reserved : 00000000

[03Ch 0060   8]                 Base Address : 0000000000000000
[044h 0068   2]         Segment Group Number : 0000
[046h 0070   1]             Start Bus Number : 00
[047h 0071   1]               End Bus Number : 00
[048h 0072   4]                     Reserved : 00000000

Raw Table Data: Length 76 (0x4C)

    0000: 4D 43 46 47 4C 00 00 00 01 ED 4C 49 4E 41 52 4F  // MCFGL.....LINARO
    0010: 53 42 53 41 51 45 4D 55 10 08 20 20 4C 4E 52 4F  // SBSAQEMU..  LNRO
    0020: 01 00 00 00 00 00 00 00 00 00 00 00 00 00 00 F0  // ................
    0030: 00 00 00 00 00 00 00 FF 00 00 00 00 00 00 00 00  // ................
    0040: 00 00 00 00 00 00 00 00 00 00 00 00              // ............
