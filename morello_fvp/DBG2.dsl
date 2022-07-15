/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20190509 (64-bit version)
 * Copyright (c) 2000 - 2019 Intel Corporation
 * 
 * Disassembly of DBG2, Fri Jul 15 09:45:25 2022
 *
 * ACPI Data Table [DBG2]
 *
 * Format: [HexOffset DecimalOffset ByteLength]  FieldName : FieldValue
 */

[000h 0000   4]                    Signature : "DBG2"    [Debug Port table type 2]
[004h 0004   4]                 Table Length : 0000005D
[008h 0008   1]                     Revision : 00
[009h 0009   1]                     Checksum : FB
[00Ah 0010   6]                       Oem ID : "ARMLTD"
[010h 0016   8]                 Oem Table ID : "ARMLDBG2"
[018h 0024   4]                 Oem Revision : 00010000
[01Ch 0028   4]              Asl Compiler ID : "ARMH"
[020h 0032   4]        Asl Compiler Revision : 00010000

[024h 0036   4]                  Info Offset : 0000002C
[028h 0040   4]                   Info Count : 00000001

[02Ch 0044   1]                     Revision : 00
[02Dh 0045   2]                       Length : 0031
[02Fh 0047   1]               Register Count : 01
[030h 0048   2]              Namepath Length : 000B
[032h 0050   2]              Namepath Offset : 0026
[034h 0052   2]              OEM Data Length : 0000 [Optional field not present]
[036h 0054   2]              OEM Data Offset : 0000 [Optional field not present]
[038h 0056   2]                    Port Type : 8000
[03Ah 0058   2]                 Port Subtype : 0003
[03Ch 0060   2]                     Reserved : 0000
[03Eh 0062   2]          Base Address Offset : 0016
[040h 0064   2]          Address Size Offset : 0022

[042h 0066  12]        Base Address Register : [Generic Address Structure]
[042h 0066   1]                     Space ID : 00 [SystemMemory]
[043h 0067   1]                    Bit Width : 20
[044h 0068   1]                   Bit Offset : 00
[045h 0069   1]         Encoded Access Width : 03 [DWord Access:32]
[046h 0070   8]                      Address : 000000001C0A0000

[04Eh 0078   4]                 Address Size : 00001000

[052h 0082  11]                     Namepath : "\_SB_.COM0"

Raw Table Data: Length 93 (0x5D)

    0000: 44 42 47 32 5D 00 00 00 00 FB 41 52 4D 4C 54 44  // DBG2].....ARMLTD
    0010: 41 52 4D 4C 44 42 47 32 00 00 01 00 41 52 4D 48  // ARMLDBG2....ARMH
    0020: 00 00 01 00 2C 00 00 00 01 00 00 00 00 31 00 01  // ....,........1..
    0030: 0B 00 26 00 00 00 00 00 00 80 03 00 00 00 16 00  // ..&.............
    0040: 22 00 00 20 00 03 00 00 0A 1C 00 00 00 00 00 10  // ".. ............
    0050: 00 00 5C 5F 53 42 5F 2E 43 4F 4D 30 00           // ..\_SB_.COM0.
