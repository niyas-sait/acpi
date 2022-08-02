/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20190509 (64-bit version)
 * Copyright (c) 2000 - 2019 Intel Corporation
 * 
 * Disassembly of tpm2.dat, Tue Aug  2 11:54:14 2022
 *
 * ACPI Data Table [TPM2]
 *
 * Format: [HexOffset DecimalOffset ByteLength]  FieldName : FieldValue
 */

[000h 0000   4]                    Signature : "TPM2"    [Trusted Platform Module hardware interface table]
[004h 0004   4]                 Table Length : 0000004C
[008h 0008   1]                     Revision : 04
[009h 0009   1]                     Checksum : 1F
[00Ah 0010   6]                       Oem ID : "Ampere"
[010h 0016   8]                 Oem Table ID : "Altra   "
[018h 0024   4]                 Oem Revision : 00000002
[01Ch 0028   4]              Asl Compiler ID : "AMP."
[020h 0032   4]        Asl Compiler Revision : 01000013

[024h 0036   2]               Platform Class : 0001
[026h 0038   2]                     Reserved : 0000
[028h 0040   8]              Control Address : 0000000088500000
[030h 0048   4]                 Start Method : 0B [Command Response Buffer with ARM SMC]

[034h 0052  12]            Method Parameters : 00 00 00 00 00 00 00 00 00 FF 00 C2
[040h 0064   4]           Minimum Log Length : 00010000
[044h 0068   8]                  Log Address : 00000807F9F00000

/**** ACPI table terminates in the middle of a data structure! (dump table) */

Raw Table Data: Length 76 (0x4C)

    0000: 54 50 4D 32 4C 00 00 00 04 1F 41 6D 70 65 72 65  // TPM2L.....Ampere
    0010: 41 6C 74 72 61 20 20 20 02 00 00 00 41 4D 50 2E  // Altra   ....AMP.
    0020: 13 00 00 01 01 00 00 00 00 00 50 88 00 00 00 00  // ..........P.....
    0030: 0B 00 00 00 00 00 00 00 00 00 00 00 00 FF 00 C2  // ................
    0040: 00 00 01 00 00 00 F0 F9 07 08 00 00              // ............
