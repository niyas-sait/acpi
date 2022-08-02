/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20190509 (64-bit version)
 * Copyright (c) 2000 - 2019 Intel Corporation
 * 
 * Disassembly of slit.dat, Tue Aug  2 11:52:54 2022
 *
 * ACPI Data Table [SLIT]
 *
 * Format: [HexOffset DecimalOffset ByteLength]  FieldName : FieldValue
 */

[000h 0000   4]                    Signature : "SLIT"    [System Locality Information Table]
[004h 0004   4]                 Table Length : 0000002D
[008h 0008   1]                     Revision : 01
[009h 0009   1]                     Checksum : BB
[00Ah 0010   6]                       Oem ID : "Ampere"
[010h 0016   8]                 Oem Table ID : "Altra   "
[018h 0024   4]                 Oem Revision : 00000002
[01Ch 0028   4]              Asl Compiler ID : "AMP."
[020h 0032   4]        Asl Compiler Revision : 01000013

[024h 0036   8]                   Localities : 0000000000000001
[02Ch 0044   1]                 Locality   0 : 0A

Raw Table Data: Length 45 (0x2D)

    0000: 53 4C 49 54 2D 00 00 00 01 BB 41 6D 70 65 72 65  // SLIT-.....Ampere
    0010: 41 6C 74 72 61 20 20 20 02 00 00 00 41 4D 50 2E  // Altra   ....AMP.
    0020: 13 00 00 01 01 00 00 00 00 00 00 00 0A           // .............
