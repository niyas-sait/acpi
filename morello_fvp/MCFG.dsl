/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20190509 (64-bit version)
 * Copyright (c) 2000 - 2019 Intel Corporation
 * 
 * Disassembly of MCFG, Fri Jul 15 09:45:25 2022
 *
 * ACPI Data Table [MCFG]
 *
 * Format: [HexOffset DecimalOffset ByteLength]  FieldName : FieldValue
 */

[000h 0000   4]                    Signature : "MCFG"    [Memory Mapped Configuration table]
[004h 0004   4]                 Table Length : 0000003C
[008h 0008   1]                     Revision : 01
[009h 0009   1]                     Checksum : 40
[00Ah 0010   6]                       Oem ID : "ARMLTD"
[010h 0016   8]                 Oem Table ID : "ARMLMCFG"
[018h 0024   4]                 Oem Revision : 00010000
[01Ch 0028   4]              Asl Compiler ID : "ARMH"
[020h 0032   4]        Asl Compiler Revision : 00010000

[024h 0036   8]                     Reserved : 0000000000000000

[02Ch 0044   8]                 Base Address : 0000000020000000
[034h 0052   2]         Segment Group Number : 0000
[036h 0054   1]             Start Bus Number : 00
[037h 0055   1]               End Bus Number : 0F
[038h 0056   4]                     Reserved : 00000000

Raw Table Data: Length 60 (0x3C)

    0000: 4D 43 46 47 3C 00 00 00 01 40 41 52 4D 4C 54 44  // MCFG<....@ARMLTD
    0010: 41 52 4D 4C 4D 43 46 47 00 00 01 00 41 52 4D 48  // ARMLMCFG....ARMH
    0020: 00 00 01 00 00 00 00 00 00 00 00 00 00 00 00 20  // ............... 
    0030: 00 00 00 00 00 00 00 0F 00 00 00 00              // ............
